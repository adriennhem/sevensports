class WelcomeController < ApplicationController
  def home
  	@pages = Page.all
  end
end
