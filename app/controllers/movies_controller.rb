class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["basic", "git", "ruby", "rails"]).includes(:watches).order(id: :asc)
  end
end
