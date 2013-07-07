class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.integer :plane_type_id
      t.string :serial

      t.timestamps
    end
  end
end
