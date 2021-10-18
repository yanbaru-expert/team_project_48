class TextsController < ApplicationController

  def index
    @q = Text.ransack(params[:q])
    @texts = @q.result.recent.includes(:reads).page(params[:page]).per(Text::PER)
  end
 
 def php
    @phps = Text.where(genre: ["php"]).includes(:reads)
 end

  def php_show
    @php = Text.find(params[:id])
  end
 
  def show
    @text = Text.find(params[:id])
  end

end
