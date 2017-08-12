class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  after_create :create_profile
  enum role: [:admin, :user, :guest]

  private

  def create_profile
    Profile.create(id: id, user_id: id)
  end

  def self.search(email)
    if email
      where('email LIKE ?', "%#{email}%")
    else
      all
    end
  end
end
