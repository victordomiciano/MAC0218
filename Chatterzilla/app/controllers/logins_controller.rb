class LoginsController < ApplicationController
  def index
    @logins = Login.all
  end

  def create
    @login = Login.new(login_params)
    if @login.save
      redirect_to @login
    else
      render "new"
    end
  end

  def new
    @login = Login.new
  end

  def  edit
  end

  def  show
    @login = Login.find(params[:id])
  end

  def  update
  end

  def  destroy
    @login = Login.find(params[:id])
    @login.destroy
    redirect_to  @logins_path
  end

  private
  def  login_params
    params.require(:login).permit(:nome, :apelido)
  end

end
