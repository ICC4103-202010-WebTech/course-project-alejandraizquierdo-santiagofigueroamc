class Post < ApplicationRecord
  validate :content, presence:true
  belongs_to :user
  has_many :comments

end
