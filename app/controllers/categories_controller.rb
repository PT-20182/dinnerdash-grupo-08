class CategoriesController < ApplicationController
    
    before_action :current_category, only: [:show, :edit, :update, :destroy]
    before_action :check_admin_status
    
    CATEGORIES_SIZE = 5
    
    def index
        @categories = Category.all
        @page = (params[:page] || 0).to_i
        @categories = Category.offset(CATEGORIES_SIZE * @page).limit(CATEGORIES_SIZE)
    end
     
    def show
        
    end
    
    def new
        @category = Category.new
    end
    
    def create
       category = Category.create(category_params)

       redirect_to categories_path
    end

    def edit

    end

    def update
        @category.update(category_params)
    
        redirect_to categories_path
    end

    def destroy
        @category.destroy
    
        redirect_to categories_path
    end

    private
    
    def category_params
        params.require(:category).permit(:name)
    end

    def current_category
        @category = Category.find(params[:id])
    end
end
