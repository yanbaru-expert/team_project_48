class TextsController < ApplicationController
  def index
    @texts = Text.recent.includes(:reads)
  end
 
 def php
    @phps = Text.where(genre: ["php"]).includes(:reads)
 end
 
  def show
    @text = Text.find(params[:id])
    # @php = Text.find(params[:id])
  end
  
end
