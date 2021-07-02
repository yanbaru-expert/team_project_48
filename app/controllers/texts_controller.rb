class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: ["basic", "git", "ruby", "rails"]).includes(:reads)
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
