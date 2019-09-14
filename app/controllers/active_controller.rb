class ActiveController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index1
    @job = Job.all.to_json
    @favorites = Favorite.where(user_id: current_user.id)
  end
  
  def selectTag
    job_id = params[:job_id]
    @tag = Tag.select('lib_tags.*, tags.*').joins(:lib_tag).where(job_id: job_id)
    puts "----------------------------------------------------"
    puts @tag
    return tag
  end
  
  def geo_list
    @job = Job.all.to_json
    @y = params[:y]
    @x = params[:x]
  end
  
  def create_application
    @job = Job.find(params[:id])
    @bussiness = Bussiness.find(@job.bussiness_id)
  end
  
  def createApplication
    @application = Application.new
    @application.user_id = current_user.id
    @application.job_id = params[:job_id]
    @application.status = 'appried'
    @application.save
    
    @job = Job.find(params[:job_id])
    @job.personnel_cnt = @job.personnel_cnt + 1
    @job.save
    
    redirect_to '/active/index1'
  end
  
  def create_favorites
    
  end
  
  def createFavorites
    @favorites = Favorite.new
    @favorites.y = params[:y]
    @favorites.x = params[:x]
    @favorites.user_id = current_user.id
    @favorites.save
    
    redirect_to '/active/index1'
  end
  
  def list_application
    @application = Application.select('jobs.*, applications.*').joins(:job).where(user_id: current_user.id)
    puts @application[0]
  end
  
  def appriedCancel
    @application = Application.find(params[:id])
    @application.status = 'cancel'
    @application.save
  end
end
