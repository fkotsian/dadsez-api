class RegisterJokeWorker
  include Sidekiq::Worker

  # ensure Joke exists (register it in our database)
  # find_or_create_by for idempotency (handle backed up requests)
  def perform(opts)
    Joke.find_or_create_by(
      can_i_haz_id: opts[:can_i_haz_id]
    )
  end
end
