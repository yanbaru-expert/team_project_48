class TextsController < ApplicationController
  def index
    @texts = Text.text_show.includes(:reads)
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
