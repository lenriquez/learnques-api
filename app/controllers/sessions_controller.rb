# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :redirect_if_authenticated, only: %i[create new]

  def create
    @user = User.find_by(email: params[:email].downcase)
    return render json: {}, status: :unauthorized unless @user
 
    if @user.authenticate(params[:password])
      login @user
      return render json: {}, status: :ok
    else
      return render json: {}, status: :unauthorized
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Signed out.'
  end

  def new; end
end
