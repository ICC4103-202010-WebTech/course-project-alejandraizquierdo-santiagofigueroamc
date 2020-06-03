class AddReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :reference, :event
  end
end
