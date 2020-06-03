class CreateEventDates < ActiveRecord::Migration[6.0]
  def change
    create_table :event_dates do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :suscriptors
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
