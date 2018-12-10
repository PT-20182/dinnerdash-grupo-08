class ApplicationController < ActionController::Base

    def check_admin_status
        unless user_signed_in? && current_user.admin? 
            redirect_to root_path
        end
    end

end
