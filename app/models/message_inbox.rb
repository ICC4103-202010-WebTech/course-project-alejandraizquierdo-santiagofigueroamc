class MessageInbox < ActiveRecord::Base
  has_many :messages
  belongs_to :person
  belongs_to :organization
end
