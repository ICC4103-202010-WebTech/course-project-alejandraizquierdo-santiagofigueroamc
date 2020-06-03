class AddSuscriptorsToEventDate < ActiveRecord::Migration[6.0]
  def change
    add_column :event_dates, :suscriptors, :integer
  end
end
