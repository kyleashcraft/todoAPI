class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :user
      t.string :title
      t.boolean :private

      t.timestamps
    end
    add_index :lists, :user
  end
end
