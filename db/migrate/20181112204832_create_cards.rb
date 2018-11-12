class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :image
      t.integer :likes
      t.string :details
      t.integer :collection_id

      t.timestamps
    end
  end
end
