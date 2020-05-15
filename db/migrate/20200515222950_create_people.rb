class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.stringc :FirstName

      t.timestamps
    end
  end
end
