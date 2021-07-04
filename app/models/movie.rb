class Movie < ApplicationRecord
  # 1ページに表示される動画教材を定義
  PER = 8
  has_many :watches, dependent: :destroy
  has_many :watched_users, through: :watches, source: :user
  
  with_options presence: true do
    validates :genre
    validates :title
    validates :url
  end
  #movieをuserが視聴済みにしている時はtrue,していcdない時はfalse
  def watched_by?(user)
    watches.any?{ |watch| watch.user_id == user.id }
  end
  
  enum genre: {
    invisible: 0, # 非表示
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5,
    html: 6,
    javascript: 7,
    typescript: 8,
    react: 9,
    vue: 10,
    angular: 11,
    aws: 12,
    money: 13, # マネタイズ講座
    talk: 14, # 全ての勉強会
    live: 15, # 勉強会
  }
  scope :active, -> { where(genre: ["basic", "git", "ruby", "rails"]).order(id: :asc) }
  scope :include, -> { includes(:watches) }
  scope :recent, -> { active.include }
end
