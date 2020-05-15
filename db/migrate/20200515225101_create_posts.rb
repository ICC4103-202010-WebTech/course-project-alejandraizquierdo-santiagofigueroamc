class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :SenderID
      t.string :Content, limit: 250

      t.timestamps
    end
  end
end
