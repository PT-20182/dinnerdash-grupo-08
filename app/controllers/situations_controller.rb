class SituationsController < ApplicationController

  before_action :current_status, only: [:edit, :update, :destroy]
  before_action :check_admin_status

  SITUATIONS_SIZE = 5

  def index
    @situations = Situation.all
    @page = (params[:page] || 0).to_i
    @situations = Situation.offset(SITUATIONS_SIZE * @page).limit(SITUATIONS_SIZE)
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

    redirect_to situations_path
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
