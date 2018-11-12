class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :designer
      t.string :season
      t.string :brand

      t.timestamps
    end
  end
end
