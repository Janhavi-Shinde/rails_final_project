class UsersController < ApplicationController
    before_action :require_logged_in
    skip_before_action :require_logged_in, only: [:create, :new]

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
       
        # redirect_to '/'
        # flash.now[:notice] = "please log in with your new details"
        
    end
    def facebookcreate
        user = User.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
          u.email = auth['info']['email']
        #   u.image = auth['info']['image']
        end
    
        session[:user_id] = user.id
        redirect_to user_path(user)
        
      end
    
    def show
        # if current_user.id == params[:id]
        
        @user = User.find(current_user.id)
        
        # raise current_user.inspect
        # else 
        #     redirect_to '/' 
        #     flash.now[:notice] = "the session hash's user instance does not match with the params user id"
        
        # end
    end
    

    

    
end
