class Event < ApplicationRecord
  has_many :event_dates
  has_many :inviteds
  has_one_attached :flayer

  validates :title, :description, presence: true
  validates :final_date, not_in_past: true
  validates :event_venue, presence: true
end
