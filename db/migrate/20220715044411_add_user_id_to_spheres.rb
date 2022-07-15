class AddUserIdToSpheres < ActiveRecord::Migration[6.1]
  def change
    add_column :spheres, :user_id, :integer
  end
end
