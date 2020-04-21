class Message < ActiveRecord::Base
  validates :information, presence:true
  belongs_to :person, through::message_inbox
  belongs_to :message_inbox
  belongs_to :organization
end
