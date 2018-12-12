class CartController < ApplicationController
    
    before_action :set_cart

    def add_item

        @item = {id: params[:meal_id], qtd: params[:quantity]}  

        if set_cart.select {|item| item["id"] == params[:meal_id]} != []
            set_cart.map! do |item|
                if item["id"] == params[:meal_id]
                    {"id" => item["id"], "qtd" => item["qtd"].to_i + params[:quantity].to_i}
                else
                    item
                end
            end
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

    def search(x)
        if set_cart.any?
            set_cart.each do |i|
                if i["id"] == x
                    return false     
                end
            end    
        else
            return true
        end   
    end 

end
