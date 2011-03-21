class CustomersController < ApplicationController
  before_filter :find_customer, :only => [:show, :edit, :update, :destroy]
  
  def index
    @customers = Customer.find(:all, :order => :name)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "Successfully created customer."
      redirect_to @customer
    else
      render :action => 'new'
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @customer.update_attributes(params[:customer])
      flash[:notice] = "Successfully updated customer."
      redirect_to @customer
    else
      render :action => 'edit'
    end
  end

  def destroy
    @customer.destroy
    flash[:notice] = "Successfully destroyed customer."
    redirect_to customers_url
  end
  
  private
  def find_customer
    @customer = Customer.find(params[:id])
  end
  
end
