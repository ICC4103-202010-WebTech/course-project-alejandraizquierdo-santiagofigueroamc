class Message < ApplicationRecord
  validates :information, presence:true
  belongs_to :person


end
