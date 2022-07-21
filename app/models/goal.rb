class Goal < ApplicationRecord

    has_many :spheres_goals
    has_many :spheres, through: :spheres_goals

    validates :title, presence: true
    validates :description, length: {maximum: 100}
    validates :sphere_ids, presence: true

    def get_sphere(current_goal_id)
        sphere_goal_var = current_goal_id.spheres_goal.where(goal_id == current_goal_id )
        sphere_goal_var.sphere_id
        
    end
end
