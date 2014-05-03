get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/' do

puts params
redirect to "/user"
end

get "/user" do

  erb :dashbored
end


### SURVEY CREATION ###

  get '/surveys/new' do

    erb :'survey_creation/new_survey'
  end

  post '/surveys/new' do
    @survey = Survey.create(title: params[:title])

    @question = Question.create(survey_id: @survey.id,
                                question: params[:question])

    @choices = Choice.create(question_id: @question.id,
                              choice: params[:choice_1])
    @choices = Choice.create(question_id: @question.id,
                              choice: params[:choice_2])
    @choices = Choice.create(question_id: @question.id,
                              choice: params[:choice_3])
    @choices = Choice.create(question_id: @question.id,
                              choice: params[:choice_4])

    redirect to '/surveys/new'
  end

