class AppConfigsController < ApplicationController
  before_filter :require_admin
  # before_filter :bind_pry
  # 
  # def bind_pry
  #   binding.pry
  # end
  
  
  
  def edit
       @app_config = AppConfig.first || AppConfig.new
  end

  def update
     #update each Setting (field names are the same as Settings attribute names)
     @app_config = AppConfig.first   
     if @app_config.update_attributes(params[:app_config])
     flash[:notice] = "Application settings updated successfully."
     redirect_to :action => 'edit'
   else
     flash[:error] = "Error"
     redirect_to :action => 'edit'
   end
   end
end

