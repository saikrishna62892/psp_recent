class ApplicationController < ActionController::Base

add_flash_types :danger,:info, :success,:warning



include SessionsHelper
before_action :require_login
 
  private
 
  def require_login
    unless logged_in?
      flash[:danger] = "You must be logged in to access this section"
      redirect_to root_url # halts request cycle
    end
  end

end
