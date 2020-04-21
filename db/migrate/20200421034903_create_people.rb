class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, limit: 15
      t.string :last_name, limit: 15
      t.string :username, limit: 15
      t.string :email, limit: 20
      t.string :password, limit: 10
      t.date :last_signed
      t.image :profile_picture
      t.string :biography, limit: 200
      t.string :adress, limit: 100

      t.timestamps null: false
    end
  end
end
