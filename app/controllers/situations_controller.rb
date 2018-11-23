class SituationsController < ApplicationController
  def index
    @situations = Situation.all
  end

  def show
    @situation = Situation.find(params[:id])
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

  private

  def situation_params
    params.require(:situation).permit(:description)
  end

end
