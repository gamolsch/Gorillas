get '/' do
  # Look in app/views/index.erb
  erb :index
end


### SURVEY CREATION ###

  get '/surveys/new' do

    erb :'survey_creation/new_survey'
  end

  post '/surveys/new' do

    redirect to '/dashboard'
  end
