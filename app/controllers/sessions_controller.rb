class SessionsController < ApplicationController
    def new
    end
    
    def create

        user = User.find_by(email: params[:email])
        
            if user && user.password == params[:password]
                session[:user_id] = user.id
                redirect_to user_path(user)
            else
                flash.now[:notice] = "Invalid email or password. Try again if ur not a hacker"
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
        session.delete :email
        session.delete :password
        redirect_to '/'
      end
end