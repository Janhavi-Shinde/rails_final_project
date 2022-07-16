class GoalsController < ApplicationController
    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(goals_params)
        @goal.save
        redirect_to spheres_path
        # what path do we pass here for this urlhelper? 
        # we have many spheres (through spheres_goals),
        # maybe we can create a model method that gets the sphere id for the specific goal id?(we'll have to pass the current goal id in as an argument)
        # pk:2 sphere_id:4 goal_id: 5
        # goal.sphere_goal where goal_id =5, .sphere_id
        # sphere_goal_var = goal.sphere_goal.where(goal_id == 5 )
        # sphere_goal_var.sphere_id
    end

    private
    def goals_params
        params.require(:goal).permit(:title, :description)
    end

end
