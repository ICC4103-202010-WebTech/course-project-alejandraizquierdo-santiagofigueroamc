class Person < ActiveRecord::Base
  belongs_to :person
  has_many :messages



end
