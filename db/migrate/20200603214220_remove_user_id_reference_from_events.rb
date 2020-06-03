class RemoveUserIdReferenceFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :events, :user, index: true, foreign_key: true
  end
end
