class ControlsController < ApplicationController
  
  def index
    @controls = Control.all
  end

  def new
    @users = User.all
    @server = Server.find(params[:server_id])
    @control = Control.new
  end

  def create
    @control = Control.new(params[:control])
    @users = User.all
    @server = Server.find(@control.server_id)
    if @control.save
      flash[:notice] = "Successfully created control."
      redirect_to server_path(@server)
    else
      render :action => 'new'
    end
  end

  def show
    @control = Control.find(params[:id])
  end

  def edit
    @control = Control.find(params[:id])
  end

  def update
    @control = Control.find(params[:id])
    @server = Server.find(@control.server_id)
    if @control.update_attributes(params[:control])
      flash[:notice] = "Successfully updated control."
      redirect_to @control
    else
      render :action => 'edit'
    end
  end

  def destroy
    @control = Control.find(params[:id])
    @control.destroy
    flash[:notice] = "Successfully destroyed control."
    redirect_to controls_url
  end
  
  private
  
end
