class Movie < ApplicationRecord
  belongs_to :user
  has_many :watches, dependent: :destroy
  
  has_many :watched_users, through: :watches, source: :user
  #movieをuserが視聴済みにしている時はtrue,していない時はfalse
  def watched_by?(user)
    watches.any?{ |watch| watch.user_id == user.id }
  end
  
  with_options presence: true do
    validates :genre
    validates :title
    validates :url
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
end
