class SpheresController < ApplicationController
    def new
        
        user = User.find(params[:user_id])
       
        if user 
                # && user == current_user

            @sphere = user.spheres.build
            
        else 
            # render to error page
            render "no user exists"
        end
    end

    def index

    end
    def create
        sphere = Sphere.new(sphere_params)
       if sphere.save!
        
         redirect_to sphere
       else 
        render :new

       end
            

    end

    def show
        @sphere = Sphere.find(params[:id])
    end

    def destroy
        @sphere = Sphere.find(params[:id])
        @sphere.destroy
        user = @sphere.user_id
        flash[:notice] = "Sphere deleted."
        redirect_to user_path(user)
        
    end
    private

    def sphere_params
        params.require(:sphere).permit(:title, :user_id)
    end
end
