class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :Title, limit: 30
      t.string :Address, limit: 100
      t.string :Description, limit: 200
      t.boolean :SelectManual
      t.date :FinalDate

      t.timestamps
    end
  end
end
