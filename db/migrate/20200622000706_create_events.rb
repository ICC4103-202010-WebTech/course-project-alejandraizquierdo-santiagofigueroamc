class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.text :description
      t.boolean :select_manual
      t.datetime :final_date

      t.timestamps
    end
  end
end
