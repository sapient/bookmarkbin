class HomeController < ApplicationController
  def index
    if current_user
      render "home/home"
      return
    end
  end

end
