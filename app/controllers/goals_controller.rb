class GoalsController < ApplicationController
    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(goals_params)
        @goal.save

        # sphere_goal_instance = SpheresGoal.find_by(goal_id: @goal.id)
        # sphere_id = sphere_goal_instance.sphere_id
        
        # sphere_id = get_sphere(@goal)
        # redirect_to sphere_path(sphere_id) 
         redirect_to goal_path(@goal)

        
        # what path do we pass here for this urlhelper? 
        # we have many spheres (through spheres_goals),
        # maybe we can create a model method that gets the sphere id for the specific goal id?(we'll have to pass the current goal id in as an argument)
        # pk:2 sphere_id:4 goal_id: 5
        # goal.sphere_goal where goal_id =5, .sphere_id
        # sphere_goal_var = goal.sphere_goal.where(goal_id == 5 )
        # sphere_goal_var.sphere_id
    end

    def show
        @goal = Goal.find(params[:id])

    end
    private
    def goals_params
        params.require(:goal).permit(:title, :description, sphere_ids:[])
    end

end
