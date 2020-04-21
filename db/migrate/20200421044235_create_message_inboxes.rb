class CreateMessageInboxes < ActiveRecord::Migration
  def change
    create_table :message_inboxes do |t|

      t.timestamps null: false
    end
  end
end
