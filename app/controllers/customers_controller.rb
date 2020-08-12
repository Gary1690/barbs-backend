class CustomersController < ApplicationController

  def index 
    customers = Customer.all 
    render json: customers
  end

  def create 
    customer = Customer.create(customer_params)
    render json: customer
  end

  def update
    customer = Customer.find_by(id:params[:id])
    customer.update(customer_params)
    render json: customer
  end

  def destroy
    customer = Customer.find_by(id:params[:id])
    customer.destroy 
    render json: customer 
  end

  private 
  def customer_params 
    params.require(:customer).permit(:name,:lastname,:phone)
  end
end
