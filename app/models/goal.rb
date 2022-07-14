class Goal < ApplicationRecord
    has_many :sphere_goal
    has_many :spheres, through: :sphere_goals
end
