class CartController < ApplicationController

    before_action :set_cart

    def add_item

       @item = {id: params[:meal_id], qtd: params[:quantity]}  

       set_cart.push(@item)

       redirect_to meals_path

    end

    def remove_item
       @cart.delete_at(params[item].to_i)

        # if tava no cardapio
        #     redirect_to meals_path
        # else 
        #     redirect_to order_meals_path
        # end 
    end

    private

    def set_cart
        session[:cart] ||= [] 
    end

end

