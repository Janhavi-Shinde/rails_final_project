class Sphere < ApplicationRecord
    has_many :spheres_goals
    has_many :goals, through: :spheres_goals
    belongs_to :user

    validates :title, presence: true
    validates :title, uniqueness: true
end
