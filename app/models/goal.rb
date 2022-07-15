class Goal < ApplicationRecord

    has_many :spheres_goals
    has_many :spheres, through: :spheres_goals

    def get_sphere(current_goal_id)
        # sphere_goal_var = goal.sphere_goal.where(goal_id == current_goal_id )
        # sphere_goal_var.sphere_id
        
    end
end
