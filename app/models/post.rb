class Post < ApplicationRecord
  belongs_to :event
  validate :content, presence:true
  belongs_to :people
  has_many :comments

end
