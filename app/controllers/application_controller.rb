class ApplicationController < ActionController::Base

    def check_admin_status
        unless user_signed_in? && current_user.admin? 
            redirect_to root_path
            flash[:notice] = "Permission denied. You have no administrator permissions!"
        end
    end

    def after_sign_in_path_for(resource)
        root_path
    end

end
