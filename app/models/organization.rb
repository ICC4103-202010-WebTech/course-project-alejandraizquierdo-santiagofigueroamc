class Organization < ApplicationRecord
  belongs_to :person
  has_many :messages
  has_many :posts

  has_many :events
  has_many :people
  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, confirmation: { case_sensitive: false }, format: { with: /\A(\S+)@(.+)\.(\S+)\z/}
  validates :username, presence: true
  validates :address, presence: true
  validates :email, confirmation: true
  validates :email, uniqueness: true
  validates :username, uniqueness: true
















end
