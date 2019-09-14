class BussinessController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @bussiness = Bussiness.find_by(user_id: current_user.id, state: 'Y')
    if @bussiness != nil
      @job = Job.where(bussiness_id: @bussiness.id)
    end
  end
  
  def location
  end

  def create
    @bussiness = Bussiness.where(user_id: current_user.id).update_all(state: 'N')
    
    @bussiness = Bussiness.new
    @bussiness.bs_name = params[:bs_name]
    @bussiness.address = params[:address]
    @bussiness.phone = params[:phone]
    @bussiness.y = params[:y]
    @bussiness.x = params[:x]
    @bussiness.user_id = current_user.id
    @bussiness.state = 'Y'
    @bussiness.save
    
    redirect_to '/bussiness/index'
  end
  
  def change_bs
    @bussiness = Bussiness.where(user_id: current_user.id)
  end
  
  def change
    @bussiness = Bussiness.where(user_id: current_user.id).update_all(state: 'N')
    
    @bussiness = Bussiness.find(params[:id])
    @bussiness.state = 'Y'
    @bussiness.save
    
    redirect_to '/bussiness/index'
  end
  
  def create_job
    @bussiness = Bussiness.find(params[:id])
    @lib_tag = LibTag.all
  end
  
  def createJob
    @job = Job.create(
      bussiness_id: params[:bussiness_id],
      date: params[:date],
      time_end: params[:time_end],
      time_start: params[:time_start],
      pay: params[:pay],
      bs_name: params[:bs_name],
      address: params[:address],
      phone: params[:phone],
      y: params[:y],
      x: params[:x],
      etc: params[:etc],
      personnel: params[:personnel],
      personnel_cnt: 0
    )
    
    @sel_tag = JSON.parse(params[:data])
    
    counter = 0
    while counter < @sel_tag.length
      @tag = Tag.new(job_id: @job.id)
      @tag.lib_tag_id = @sel_tag[counter]["id"]
      @tag.save
      counter = counter + 1
    end
    
    redirect_to '/bussiness/index'
  end
  
  def show_job
    @job = Job.find(params[:id])
    @application = Application.select('users.*, applications.*').joins(:user).where(job_id: @job.id)
  end
  
  def show_applicant
    @job = Job.find(params[:id])
    @application = Application.select('users.*, applications.*').joins(:user).where(job_id: @job.id)
     
  end
end
