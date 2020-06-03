class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.date :Date
      t.integer :SenderID
      t.integer :RecieverID
      t.string :Information

      t.timestamps
    end
  end
end
