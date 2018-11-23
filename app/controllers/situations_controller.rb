class SituationsController < ApplicationController
  def index
    @situations = Situation.all
  end

  def show
    @situation = Situation.find(params[:id])
  end

  def new
  end

  def edit
  end
end
