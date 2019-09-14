class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :user_id
      t.string :job_id
      t.string :status

      t.timestamps
    end
  end
end
