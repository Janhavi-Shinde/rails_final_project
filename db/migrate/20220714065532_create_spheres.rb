class CreateSpheres < ActiveRecord::Migration[5.2]
  def change
    create_table :spheres do |t|
      t.string :title

      t.timestamps
    end
  end
end
