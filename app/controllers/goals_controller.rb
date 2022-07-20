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
    def destroy
        @goal = Goal.find(params[:id])
        @goal.destroy
        flash[:notice] = "Goal deleted."

        # redirect_to sphere_path(@goal.spheres_goals.sphere_id)
        #above code doesn't work - can't find sphere_id/use sphere_id as a chained method.
        sphere_id = SpheresGoal.find_by(goal_id: @goal.id).sphere_id
        redirect_to sphere_path(sphere_id)
        
        
        
        
    end
    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:id])
        @goal.update(goals_params)

        sphere_id = SpheresGoal.find_by(goal_id: @goal.id).sphere_id
        redirect_to sphere_path(sphere_id)
    end

    def show
        @goal = Goal.find(params[:id])
        

    end
    private
    def goals_params
        params.require(:goal).permit(:title, :description, sphere_ids:[])
    end

end
