class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :lib_tag_id
      t.string :user_id

      t.timestamps
    end
  end
end
