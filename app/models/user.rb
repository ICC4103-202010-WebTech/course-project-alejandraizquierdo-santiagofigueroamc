class User < ApplicationRecord
  has_one_attached :profile_picture

  validates_uniqueness_of :username, :email

end
