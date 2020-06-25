class PagesController < ApplicationController
  def home
    @events = Event.order(final_date: :desc).limit(5)
  end
end
