class Event < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :persons
  belongs_to :person
  has_many :event_date

  after_create do |event|
    updated_at_in_database event
  end

end
