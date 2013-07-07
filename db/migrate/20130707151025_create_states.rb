class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :plane_id
      t.string :name

      t.timestamps
    end
  end
end
