class TextsController < ApplicationController
  def index
    @texts = Text.active.includes(:reads)
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
