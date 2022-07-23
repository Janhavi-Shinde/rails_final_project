class UsersController < ApplicationController
    before_action :require_logged_in
    skip_before_action :require_logged_in, only: [:create, :new]

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:name, :email, :password))
        @user.save
        redirect_to '/'
        flash.now[:notice] = "please log in with your new details"
        
    end

    
    def show
        # if current_user.id == params[:id]
        @user = User.find(params[:id])
        # raise current_user.inspect
        # else 
        #     redirect_to '/' 
        #     flash.now[:notice] = "the session hash's user instance does not match with the params user id"
        
        # end
    end
    

    

    
end
