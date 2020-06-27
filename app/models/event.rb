class Event < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :event_dates
  has_many :comments
  has_one_attached :flayer
  accepts_nested_attributes_for :event_dates, allow_destroy: true

  validates :title, :description, presence: true
  validates :address, presence: true
end
