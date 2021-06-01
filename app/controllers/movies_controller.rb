class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["basic", "git", "ruby", "rails"]).includes(:user, :watches).order(id: :asc)
  end
end
