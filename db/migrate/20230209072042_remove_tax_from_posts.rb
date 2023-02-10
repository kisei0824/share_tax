class RemoveTaxFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :tax, :string
  end
end
