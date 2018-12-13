class ApplicationController < ActionController::Base

    helper_method :current_order

    def current_order
        if !session[:order_id].nil?
            Order.find[session[:order_id]]
        else
            Order.new
        end
    end

    def check_admin_status
        unless user_signed_in? && current_user.admin?
            redirect_to root_path
            flash[:warning] = "Permission denied. You have no administrator permissions!"
        end
    end

    def after_sign_in_path_for(resource)
        root_path
    end

end
