class CreateSpheresGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :spheres_goals do |t|
      t.integer :sphere_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
