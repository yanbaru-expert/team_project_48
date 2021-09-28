class TextsController < ApplicationController

  def index
    @texts = Text.recent.includes(:reads).page(params[:page]).per(Text::PER)
  
  end
 
 def php
    @phps = Text.where(genre: ["php"]).includes(:reads)
 end
 
  def show
    @text = Text.find(params[:id])
  end
  
end
