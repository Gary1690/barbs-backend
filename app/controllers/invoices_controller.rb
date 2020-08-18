class InvoicesController < ApplicationController

  def create 
    appointment =  Appointment.find(params[:appointment_id])
    appointment.update(status:true)
    render json: appointment
  end 
  
end
