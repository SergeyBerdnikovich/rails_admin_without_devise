class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :github_id
      t.string :login
      t.references :user

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
