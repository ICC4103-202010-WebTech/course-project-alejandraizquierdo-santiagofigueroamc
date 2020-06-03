class AddReferenceToEventDate < ActiveRecord::Migration[6.0]
  def change
    add_column :event_dates, :reference, :event
  end
end
