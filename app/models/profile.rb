class Profile < ApplicationRecord
  validates :first_name, :last_name, :birthdate, :sex, presence: true, on: :update
  mount_uploader :photo_url, PhotoUploader
  enum sex: [:male, :female]

  has_many :orders
  belongs_to :user

  def add_full_name
    first_name + ' ' + last_name
  end
end
