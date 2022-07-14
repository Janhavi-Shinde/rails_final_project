class Sphere < ApplicationRecord
    has_many :sphere_goals
    has_many :goals, through: :sphere_goals
    belongs_to :user
end
