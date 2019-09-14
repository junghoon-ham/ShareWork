class AddYToBussinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :bussinesses, :y, :string
  end
end
