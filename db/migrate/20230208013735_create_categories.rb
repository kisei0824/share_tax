class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :item,     index: true, null: false
      t.string :ancestry, index: true
      t.timestamps
    end
  end
end
