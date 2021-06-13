class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :tax
      t.text :description

      t.timestamps
    end
  end
end
