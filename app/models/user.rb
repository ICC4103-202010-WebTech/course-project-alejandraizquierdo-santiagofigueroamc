class User < ApplicationRecord
  belongs_to :organization
  has_many :messages
  has_many :posts
end
