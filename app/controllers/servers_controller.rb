class ServersController < ApplicationController
  def index
    @servers = Server.all
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @server = Server.new
  end

  def create
    @server = Server.new(params[:server])
    @customer = Customer.find(@server.customer_id)
    if @server.save
      flash[:notice] = "Successfully created server."
      redirect_to @server
    else
      render :action => 'new'
    end
  end

  def show
    @server = Server.find(params[:id])
  end

  def edit
    @server = Server.find(params[:id])
  end

  def update
    @server = Server.find(params[:id])
    logger.debug("aqui #{@server.customer_id}")
    @customer = Customer.find(@server.customer_id)
    if @server.update_attributes(params[:server])
      flash[:notice] = "Successfully updated server."
      redirect_to @server
    else
      render :action => 'edit'
    end
  end

  def destroy
    @server = Server.find(params[:id])
    @server.destroy
    flash[:notice] = "Successfully destroyed server."
    redirect_to servers_url
  end
end
