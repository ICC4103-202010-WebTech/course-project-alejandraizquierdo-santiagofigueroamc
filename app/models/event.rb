class Event < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :event_dates
  has_one_attached :flayer
  accepts_nested_attributes_for :event_dates, allow_destroy: true

  validates :title, :description, presence: true
  validates :final_date, not_in_past: true
  validates :address, presence: true
end
