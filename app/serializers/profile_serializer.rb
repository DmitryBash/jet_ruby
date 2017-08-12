class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :sex, :phone, :user_id

  belongs_to :user
end
