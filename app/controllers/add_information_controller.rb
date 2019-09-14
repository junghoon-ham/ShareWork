class AddInformationController < ApplicationController
  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.phone = params[:phone]
    @user.bankName = params[:bankName]
    @user.accountNum = params[:accountNum]
    @user.address1 = params[:address1]
    @user.address2 = params[:address2]
    
    @user.save
    
    redirect_to "/login/index"
  end
end
