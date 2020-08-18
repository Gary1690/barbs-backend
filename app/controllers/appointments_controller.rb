class AppointmentsController < ApplicationController

  def create
    appointment = Appointment.create(appointment_params) 
    render json: appointment
  end

  def update 
    byebug
  end

  def show 
    appointment = Appointment.find_by(id:params[:id])
    render json: appointment, include: [:customer]
  end 

  def destroy
    appointment = Appointment.find_by(id:params[:id])
    appointment.destroy
    render json: appointment
  end


  private 
  def appointment_params 
    params.require(:appointment).permit!
  end

end
