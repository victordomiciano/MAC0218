class LoginsController < ApplicationController

  def  index
    @login = Login.all
  end

  def  create
    @login = Login.new(
        params.require(:login).permit(:nome ,:apelido))
    @login.save
    redirect_to  @login
  end

  def  new
  end

  def  edit
  end

  def  show
    @login = Login.find(params[:id])
  end

  def  update
  end

  def  destroy
  end

end
