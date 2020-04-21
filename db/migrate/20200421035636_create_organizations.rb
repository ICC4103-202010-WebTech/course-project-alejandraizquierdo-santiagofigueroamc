class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, limit: 15
      t.string :username, limit: 15
      t.string :email, limit: 20
      t.string :password, limit: 10
      t.string :adress, limit: 100
      t.image :profile_picture

      t.timestamps null: false
    end
  end
end
