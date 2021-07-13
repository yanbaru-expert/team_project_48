class TextsController < ApplicationController

  def index
    @texts = Text.recent.includes(:reads).page(params[:page]).per(9)
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
