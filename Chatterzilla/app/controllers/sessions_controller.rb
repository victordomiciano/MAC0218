class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      redirect_to sessions_path
    else
      render html: "Conta inexistente, favor criar uma conta!"
    end
  end

  def destroy
  end
end
