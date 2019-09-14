class AddStateToBussinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :bussinesses, :state, :string
  end
end
