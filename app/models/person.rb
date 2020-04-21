class Person < ActiveRecord::Base
  has_many :events
  has_many :persons
  has_one :message_inbox
  has_many :messages, through::message_inbox
  belongs_to :organization
  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :username, presence: true
  validates :adress, presence: true
  validates :email, confirmation: true
  validates :email, uniqueness: true
  validates :username, uniqueness: true
git


end
