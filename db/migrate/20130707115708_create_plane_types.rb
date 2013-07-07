class CreatePlaneTypes < ActiveRecord::Migration
  def change
    create_table :plane_types do |t|
      t.string :manufacturer
      t.string :name
      t.attachment :picture

      t.timestamps
    end
  end
end
