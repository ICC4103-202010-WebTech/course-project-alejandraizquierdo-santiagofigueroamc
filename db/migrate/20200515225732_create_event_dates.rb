class CreateEventDates < ActiveRecord::Migration[6.0]
  def change
    create_table :event_dates do |t|
      t.datetime :StartDate
      t.datetime :EndDate

      t.timestamps
    end
  end
end
