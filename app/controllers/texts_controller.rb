class TextsController < ApplicationController
  def index
    @texts = Text.active
    @texts = Text.text_include
  end

  def show
    @text = Text.find(params[:id])
  end
  
end
