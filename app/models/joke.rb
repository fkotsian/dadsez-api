class Joke < ApplicationRecord
  has_many :votes

  scope :top_five, ->{ order('votes_count DESC').limit(5) }
  scope :bottom_five, ->{ order('votes_count ASC').limit(5) }

  def as_json(opts)
    super(
      only: [:can_i_haz_id, :votes_count]
    )
  end
end
