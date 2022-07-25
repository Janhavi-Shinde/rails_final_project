class SessionsController < ApplicationController
    def new
    end
    
    def create

        user = User.find_by(email: params[:email])
        
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to user_path(user)
            else
                # return head(:forbidden) 
                flash.now[:notice] = "Invalid email or password. Try again "
                 render :new
            end 

    
    end

    def show
        if User.find_by(username: params[:name]) 
        user = User.find_by(username: params[:name]) 
        session[:user_id] = user.id
        end
    end

    def destroy
        session.delete :user_id
        
        redirect_to '/'
      end
end