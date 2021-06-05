class WatchesController < ApplicationController
  before_action :set_message
  
  def create
    current_user.watches.create!(movie_id: @movie.id)
  end
  
  def destroy
    current_user.watches.find_by(movie_id: @movie.id).destroy!
  end
  
  private
  
  def set_message
    @movie = Movie.find(params[:movie_id])
  end
end