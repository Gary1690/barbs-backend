class UsersController < ApplicationController

  def login 
    user = User.find_by(user_params)
    render json: {user:user, appointments:user.appointments }
  end

  
  private 
  def user_params 
    params.require(:user).permit!
  end


end
