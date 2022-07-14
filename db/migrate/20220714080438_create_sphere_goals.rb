class CreateSpheresGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :sphere_goals do |t|
      t.integer :sphere_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
