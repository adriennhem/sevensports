class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :all_page
  
   private

    def all_page
      @pages = Page.all.order(:number)
    end

end
