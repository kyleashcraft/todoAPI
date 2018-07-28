class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :list
      t.string :title

      t.timestamps
    end
    add_index :items, :list
  end
end
