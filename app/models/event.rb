class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :adress, presence: true
  validates :description, presence: true
  has_many :persons
  belongs_to :person

  after_create do |event|
    updated_at_in_database event
  end

end
