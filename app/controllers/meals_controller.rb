class MealsController < ApplicationController
    before_action :get_categories
    before_action :check_admin_status, only: [:new, :edit]
    before_action :current_meal, only: [:show, :edit, :update, :destroy]

    def get_categories
        @categories = Category.all
    end

    def index
        @meals = Meal.all
    end

    def show

    end

    def create
        @meal = Meal.new(meal_params)
        if @meal.save!
            redirect_to meal_path(@meal)
        else
            flash[:notice] = "Sua vida acabou..."
            render :new
        end
    end

    def new
        @meal = Meal.new
    end

    def edit

    end

    def update
        @meal.update(meal_params)

        redirect_to meal_path(@meal)
    end

    def destroy
        @meal.destroy

        redirect_to meals_path
    end

    private

    def meal_params
        params.require(:meal).permit(:name,:description, :price, :available, :image, :category_id)
    end

    def current_meal
        @meal = Meal.find(params[:id])
    end

  def is_admin
     if current_user.admin == true
         return true
     else
         return false
     end

  end

end
