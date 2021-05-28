class Watch < ApplicationRecord
  belongs_to :user
  
  def watched_by?(user)
    watch.exists?(user_id: user.id)
  end
end
