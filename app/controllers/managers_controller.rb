class ManagersController < ApplicationController
  def index
    @managers = Manager.all
  end

  def show
    @manager = Manager.find(params[:id])
  end

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(manager_params)
    if @manager.save
      redirect_to @manager
    else
      render :new, status: unprocessable_entity
    end
  end

  private
  def manager_params
    params.expect(manager: [ :team_name ])
  end
end
