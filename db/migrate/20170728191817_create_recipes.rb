class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.float :prep_time
      t.float :cook_time
      t.string :name

      t.timestamps
    end
  end
end
