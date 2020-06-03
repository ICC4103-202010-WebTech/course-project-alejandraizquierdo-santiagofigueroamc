class RemoveUserReferenceFromEvents < ActiveRecord::Migration[6.0]
  def self.down
    change_table :events do |t|
      t.remove :user_id
    end
  end
end
