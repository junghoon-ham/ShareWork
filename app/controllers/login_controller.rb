class LoginController < ApplicationController
  before_action :authenticate_user!
  def index
    
    if current_user.usertype == '0'
      redirect_to "/active/index1"
    elsif current_user.usertype =='1'
      redirect_to "/bussiness/index"
    else
      redirect_to "/login/select"
    end
  end
  def choose
    @user = User.find(params[:id])
    @user.usertype = params[:usertype]
    @user.save
    
    redirect_to "/"
  end
end
