class MoviesController < ApplicationController
  # 1ページに表示される動画教材を定義
  PER = 8

  def index
    @q = Movie.ransack(params[:q])
    @movies = @q.result.where(genre: ["basic", "git", "ruby", "rails"]).includes(:watches).order(id: :asc).recent.page(params[:page]).per(PER)
    page_num = @movies.current_page
    @base_level = (page_num - 1) * PER
  end
end
