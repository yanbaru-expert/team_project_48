class TextsController < ApplicationController
  def index
    @texts = Text.recent.includes(:reads)
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
