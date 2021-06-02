class MoviesController < ApplicationController
  PER = 10

  def index
    @movies = Movie.where(genre: ["basic", "git", "ruby", "rails"]).order(id: :asc).page(params[:page]).per(PER)
  end
end
