class WatchesController < ApplicationController
  def create
    current_user.watches.create!(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    current_user.watches.find_by(movie_id: params[:movie_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
