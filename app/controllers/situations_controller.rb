class SituationsController < ApplicationController
  before_action :current_status, only: [:show, :edit, :update, :destroy]
  def index
    @situations = Situation.all
  end

  def show
   
  end

  def new
    @situation = Situation.new
  end

  def create
    situation = Situation.create(situation_params)

    redirect_to situations_path
  end
  
  def edit
    
  end

  def update
    @situation.update(situation_params)

    redirect_to situation_path(@situation)
  end

  def destroy
    @situation.destroy

    redirect_to situations_path
  end

  private

  def situation_params
    params.require(:situation).permit(:description)
  end

  def current_status
     @situation = Situation.find(params[:id])
  end

end
