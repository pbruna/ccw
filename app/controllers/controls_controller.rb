class ControlsController < ApplicationController

  def index
    @controls = Control.find(:all, :limit => 20, :order => "created_at desc")
  end

  def new
    @users = User.all
    if params[:server_id]
      @servers = Server.find(params[:server_id])
      @customer = @servers.customer_id
    elsif params[:customer_id]
      @servers= Server.find(:all, :conditions => ["customer_id = ?", params[:customer_id]])
      @customer = params[:customer_id]
    end
    @control = Control.new
  end


  def create
    @control = Control.new(params[:control])
    @users = User.all
    @server = Server.find(@control.server_id)
    if @control.save
      flash[:notice] = "Control creado correctamente."
      redirect_to server_path(@server)
    else
      render :action => 'new'
    end
  end

  def show
    @control = Control.find(params[:id])
  end

  def edit
    @users = User.all
    @control = Control.find(params[:id])
    @servers = Server.find(@control.server_id)
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
