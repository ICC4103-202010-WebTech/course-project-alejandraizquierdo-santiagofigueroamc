class DropInviteds < ActiveRecord::Migration[6.0]
  def change
    drop_table :inviteds
  end
end
