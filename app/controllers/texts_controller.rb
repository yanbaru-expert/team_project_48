class TextsController < ApplicationController

  def index
    @q = Text.ransack(params[:q])
    @texts = @q.result.recent.includes(:reads).page(params[:page]).per(Text::PER)
  end

  def show
    @text = Text.find(params[:id])
  end

end
