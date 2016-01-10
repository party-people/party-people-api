class AddUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_id, :string, null: false, after: :id
    add_index  :users, :user_id, unique: true
  end
end
