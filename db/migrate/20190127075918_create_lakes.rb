class CreateLakes < ActiveRecord::Migration[5.2]
  def change
    create_table :lakes do |t|
      t.float :area
      t.string :location
      t.integer :distance

      t.timestamps
    end
  end
end
