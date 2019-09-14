class CreateLibTags < ActiveRecord::Migration[5.2]
  def change
    create_table :lib_tags do |t|
      t.string :sort
      t.string :sectors

      t.timestamps
    end
  end
end
