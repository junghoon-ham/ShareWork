class CreateBussinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :bussinesses do |t|
      t.string :bs_name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
