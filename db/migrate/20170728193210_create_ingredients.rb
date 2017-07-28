class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.float :measurement
      t.string :name

      t.timestamps
    end
  end
end
