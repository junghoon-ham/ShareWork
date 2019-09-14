class AddXToBussinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :bussinesses, :x, :string
  end
end
