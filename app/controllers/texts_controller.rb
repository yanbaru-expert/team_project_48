class TextsController < ApplicationController
  def index
    @rails_texts = Text.where(genre: ["basic", "git", "ruby", "rails"])
  end
end
