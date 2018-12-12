class CartController < ApplicationController

    before_action :set_cart

    def add_item

       @item = {id: params[:meal_id], qtd: params[:quantity]}  
        @Grrrr = {
             "oi" => "sdds"
        }

        if search(@item["id"])
            set_cart.push(@item)
        else
            set_cart.push(@Grrrr)
        end
        
    #    if !set_cart.include?(@item["id"])
    #         set_cart.push(@item)    
    #    else 
    #         set_cart.push(@Grrrr)
    #    end

       redirect_to meals_path

    end

    def remove_item
     #  @cart.delete_at(params[item].to_i)

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
