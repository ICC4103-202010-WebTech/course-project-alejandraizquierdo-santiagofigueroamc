class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :SenderID
      t.string :Content, limit: 250

      t.timestamps
    end
  end
end
