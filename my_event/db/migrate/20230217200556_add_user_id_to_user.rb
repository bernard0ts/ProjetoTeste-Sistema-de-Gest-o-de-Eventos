class AddUserIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer, foreign_key: true
  end
end
