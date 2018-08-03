class RemoveBadAssociations < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :list
    remove_index :items, :list

    remove_column :lists, :user
    remove_index :lists, :user
  end
end
