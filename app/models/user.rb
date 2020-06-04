class User < ApplicationRecord
  has_many :messages
  has_many :posts
  has_many :events
end
