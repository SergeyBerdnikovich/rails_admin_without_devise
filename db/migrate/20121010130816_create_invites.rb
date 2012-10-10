class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :sender_id
      t.integer :target_id
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
