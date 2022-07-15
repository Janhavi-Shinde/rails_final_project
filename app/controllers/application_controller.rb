class ApplicationController < ActionController::Base

    def current_user
        User.find(sessions[:user_id])
    end
end
