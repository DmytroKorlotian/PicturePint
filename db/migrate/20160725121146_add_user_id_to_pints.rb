class AddUserIdToPints < ActiveRecord::Migration[5.0]
  def change
    add_column :pints, :user_id, :integer
    add_index :pints, :user_id
  end
end
