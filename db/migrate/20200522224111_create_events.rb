class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title, limit: 50
      t.string :address, limit: 200
      t.text :description, limit: 250
      t.boolean :select_manual
      t.datetime :final_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
