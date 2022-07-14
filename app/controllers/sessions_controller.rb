class SessionsController < ApplicationController
    def new
        
    end
    def create
        return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:username] || params[:name].empty?

    session[:name] = params[:name]
    redirect_to controller: 'user', action: 'show'
    
    end
end