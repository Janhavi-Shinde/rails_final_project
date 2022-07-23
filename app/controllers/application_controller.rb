class ApplicationController < ActionController::Base
helper_method :current_user
    

    def require_logged_in
        redirect_to controller: 'sessions', action: 'new' unless current_user 
      end

      def current_user
        User.find(session[:user_id])
    # session[:user_id] 
        end
end
