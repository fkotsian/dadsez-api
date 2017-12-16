class VotesController < ApplicationController
  def create
    # find joke_id
    joke = Joke.find_by(can_i_haz_id: params[:data][:can_i_haz_id])

    # create vote
    if joke.id
      points = params[:data][:points]
      Vote.create(
        joke_id: joke.id,
        points: points,
      )
    end

    render status: 200
  end
end
