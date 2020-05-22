class Event < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :event_dates

  after_create do |event|
    updated_at_in_database event
  end

end
