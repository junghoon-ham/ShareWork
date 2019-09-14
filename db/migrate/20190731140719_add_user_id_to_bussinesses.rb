class AddUserIdToBussinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :bussinesses, :user_id, :string
  end
end
