class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.Date :Date
      t.integer :SenderID
      t.integer :RecieverID
      t.date :Date
      t.string :Information

      t.timestamps
    end
  end
end
