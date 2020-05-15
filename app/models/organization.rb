class Organization < ApplicationRecord
  has_many :events
  has_many :persons
  has_many :messages
  has_many :persons
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :username, presence: true
  validates :address, presence: true
  validates :email, confirmation: true
  validates :email, uniqueness: true
  validates :username, uniqueness: true
end
