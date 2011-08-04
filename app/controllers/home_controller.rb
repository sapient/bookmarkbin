class HomeController < ApplicationController

  def index
    logger.debug "Rendering home".yellow
    logger.debug "Current user? #{current_user.try(:id)}".try(:yellow)

    if current_user
      @bookmark = Bookmark.new
      @bookmarks = Bookmark.find_all_by_user_id(current_user.id)
      logger.debug "#{@bookmarks}".red
      render "home/home"
    end
  end

end
