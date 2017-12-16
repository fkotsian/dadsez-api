class Vote < ApplicationRecord
  belongs_to :joke

  # use custom counter-cache implementation to track upvotes & downvotes
  after_create :add_vote_to_joke
  before_destroy :remove_vote_from_joke

  private

  def add_vote_to_joke
    if points > 0
      Joke.increment_counter :votes_count, joke_id
    elsif points < 0
      Joke.decrement_counter :votes_count, joke_id
    end
  end

  def remove_vote_from_joke
    if points > 0
      Joke.decrement_counter :votes_count, joke_id
    elsif points < 0
      Joke.increment_counter :votes_count, joke_id
    end
  end
end
