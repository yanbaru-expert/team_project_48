class MoviesController < ApplicationController
  # 1ページに表示される動画教材を定義
  per = 8

  def index
    # @movies = Movie.where(genre: ["basic", "git", "ruby", "rails"]).order(id: :asc).page(params[:page]).per(PER)
    @movies = Movie.recent(per)
    page_num = @movies.current_page
    @base_level = (page_num - 1) * per
  end
end
