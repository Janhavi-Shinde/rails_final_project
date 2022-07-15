class Sphere < ApplicationRecord
    has_many :spheres_goals
    has_many :goals, through: :spheres_goals
    belongs_to :user
end
