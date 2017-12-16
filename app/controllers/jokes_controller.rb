class JokesController < ApplicationController
  def register
    j = Joke.find_or_create_by(
      can_i_haz_id: params[:can_i_haz_id]
    )

    render status: 200, json: {
      joke: j.can_i_haz_id,
      vote_count: j.votes_count,
    }
  end

  def top_five
    render status: 200, json: {
      joke_ids: Joke.top_five.reverse
    }
  end

  def bottom_five
    render status: 200, json: {
      joke_ids: Joke.bottom_five
    }
  end
end
