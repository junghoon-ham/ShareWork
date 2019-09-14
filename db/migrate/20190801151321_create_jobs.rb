class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :bussiness_id
      t.string :date
      t.string :time_start
      t.string :time_end
      t.string :pay
      t.string :bs_name
      t.string :address
      t.string :phone
      t.string :y
      t.string :x
      t.string :status
      t.text :etc
      t.string :personnel
      t.integer :personnel_cnt

      t.timestamps
    end
  end
end
