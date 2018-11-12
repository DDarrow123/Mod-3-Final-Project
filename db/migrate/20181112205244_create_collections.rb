class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :designer
      t.string :season

      t.timestamps
    end
  end
end
