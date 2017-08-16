class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_one :profile
  after_create :create_profile
  enum role: [:admin, :user, :guest]

  private

  def create_profile
    Profile.create(id: id, user_id: id, organisation: Organisation.find_by(id: 2))
  end

  def self.search(email)
    if email
      where('email LIKE ?', "%#{email}%")
    else
      all
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.google_oauth2_data'] && session['devise.google_oauth2_data']['extra']['raw_info']
        user.email = data['email'] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    provider_uid = auth.provider
    where(email: auth.info.email).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
