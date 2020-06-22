class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.datetime :last_signed_date
      t.text :biography
      t.string :location
      t.boolean :system_admin

      t.timestamps
    end
    add_index :users, :username
    add_index :users, :email
  end
end
