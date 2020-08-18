class UsersController < ApplicationController

  def login 
    user = User.find_by(user_params)
    render json: {user:user, appointments:user.appointments }
  end

  def update 
    user = User.find(params[:id])
    if params[:picture] != "null"
      user.picture = params[:picture]
    end
    user.update(filtered_params)
    render json: user
  end

  def update_password
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  private 
  def user_params 
    params.require(:user).permit!
  end

  def  filtered_params 
    params.permit(:name,:lastname,:username,:email)
  end
end
