class CartController < ApplicationController
    
    before_action :set_cart

    def add_item

        @item = {id: params[:meal_id], qtd: params[:quantity]}  

        @already_in = false

        set_cart.each do |included_item|
            if @item["id"] == included_item["id"]
                @already_in = true
                break
            end
        end

        if @already_in
            
        else
            set_cart.push(@item)

        end

        redirect_to root_path

    end

    def remove_item

        set_cart.map! do |item|
            if item["id"] == params[:meal_id]
                if item["qtd"].to_i - params[:quantity].to_i > 0
                    {"id" => item["id"], "qtd" => item["qtd"].to_i - params[:quantity].to_i}
                else
                    set_cart.delete(item)
                    break
                end
            else
                item
            end
        end

        redirect_to root_path
    end

    private
  
    def set_cart
        session[:cart] ||= []
    end

end
