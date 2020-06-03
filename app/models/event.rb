class Event < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :event_dates, dependent: :destroy
end
