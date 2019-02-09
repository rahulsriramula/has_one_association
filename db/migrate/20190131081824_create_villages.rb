class CreateVillages < ActiveRecord::Migration[5.2]
  def change
    create_table :villages do |t|
      t.string :name
      t.string :state
      t.integer :lake_id

      t.timestamps
    end
    # add_index :lake_id
  end
end
