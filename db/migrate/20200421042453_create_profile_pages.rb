class CreateProfilePages < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_pages do |t|
      t.string :picture
      t.string :full_name
      t.string :short_bio
      t.string :text
      t.string :location

      t.timestamps
    end
  end
end
