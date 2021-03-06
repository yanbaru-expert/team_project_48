class ReadsController < ApplicationController
  before_action :set_text

  def create
    current_user.reads.create!(text_id: @text.id)
  end

  def destroy
    text = current_user.reads.find_by(text_id: @text.id)
    text.destroy!
  end

  private

  def set_text
    @text = Text.find(params[:text_id])
  end

end
