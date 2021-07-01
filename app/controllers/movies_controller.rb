class MoviesController < ApplicationController
  def index
    @q = Movie.ransack(params[:q])
    @movies = @q.result.recent.page(params[:page]).per(Movie::PER)
    page_num = @movies.current_page
    @base_level = (page_num - 1) * Movie::PER
  end
end
