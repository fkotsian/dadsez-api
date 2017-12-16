class Joke < ApplicationRecord
  has_many :votes

  scope :top_five, ->{ order('votes_count DESC').limit(5).pluck(:can_i_haz_id) }
  scope :bottom_five, ->{ order('votes_count ASC').limit(5).pluck(:can_i_haz_id) }
end
