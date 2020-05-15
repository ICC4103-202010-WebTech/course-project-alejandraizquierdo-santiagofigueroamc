class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :Name, limit: 15
      t.string :Username, limit: 15
      t.string :Email, limit: 15
      t.string :Password, limit: 10
      t.string :Address{100}

      t.timestamps
    end
  end
end
