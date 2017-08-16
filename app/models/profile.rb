class Profile < ApplicationRecord
  mount_uploader :photo_url, PhotoUploader
  enum sex: [:male, :female]
  validates :first_name, :last_name, :birthdate, :sex, presence: true, on: :update

  has_many :orders
  belongs_to :user
  belongs_to :organisation

  def add_full_name
    first_name + ' ' + last_name
  end
end
