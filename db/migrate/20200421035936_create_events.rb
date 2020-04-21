class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, limit: 30
      t.string :adress, limit: 100
      t.string :description, limit: 200
      t.image :image
      t.boolean :select_manual
      t.date :final_date

      t.timestamps null: false
    end
  end
end
