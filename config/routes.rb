Rails.application.routes.draw do
  post '/jokes/:can_i_haz_id', to: 'jokes#register'
  post '/votes', to: 'votes#create'

  get '/jokes/top-five', to: 'jokes#top_five'
  get '/jokes/bottom-five', to: 'jokes#bottom_five'
end
