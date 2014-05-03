get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/' do
  @user = User.create(email: params[:email], first_name: params[:firstname], last_name: params[:lastname])
#  @user.password = params[:password]
  @user.save!
 # session[:id] = @user.id
  redirect to "/user"
end

get "/user" do

  erb :dashbored
end

post '/login' do
  puts "Logging in"
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    #session[:id] = @user.id

    redirect to "/user"
  else
   redirect to '/'
  end
end

### SURVEY CREATION ###

get '/surveys/new' do
  puts session[:id]
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

