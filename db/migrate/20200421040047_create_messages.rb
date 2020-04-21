class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.date :date
      t.string :information

      t.timestamps null: false
    end
  end
end
