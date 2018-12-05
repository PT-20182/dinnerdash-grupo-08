class UsersController < ApplicationController
    
    before_action :check_admin_status

    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        params[:user].delete(:password) if params[:user][:password].blank?
        params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
        
        if @user.update(user_params)
          redirect_to users_path
        else
          render :action => 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            redirect_to users_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :full_name, :email, :password, :password_confirmation, :role)
    end

end
