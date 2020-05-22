class AddReferenceToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :reference, :user
  end
end
