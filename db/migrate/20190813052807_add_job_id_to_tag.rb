class AddJobIdToTag < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :job_id, :string
  end
end
