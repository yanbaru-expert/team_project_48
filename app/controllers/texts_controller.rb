class TextsController < ApplicationController

  def index
    @texts = Text.recent.includes(:reads).page(params[:page]).per(Text::PER)
  
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
