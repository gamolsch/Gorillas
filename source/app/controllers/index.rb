get '/' do
  @surveys = Survey.order('title').limit(10)
  erb :index
end

# get '/surveys' do
#   @surveys = Survey.all
#   erb :index
# end

# SURVEYS ======================================
# create
get '/surveys/new' do
  puts session[:id]
  erb :new_survey
end

get '/surveys/:id' do  # don't move, wildcard alert
  puts params.inspect
  params[:id] === 'new'
end

# create
post '/surveys' do
  @survey = Survey.new(params[:survey])
  if @survey.save
    redirect to ("/surveys/#{@survey.id}")
  else
    erb :new_survey
  end
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :edit_survey
end

#edit
post '/surveys/:id' do
  @survey = Survey.find(params[:id])
  if @survey.update_attributes(params[:survey])
    redirect to("/surveys/#{@survey.id}")
  else
    erb :edit_survey
  end
end

post '/surveys/:id/delete' do
  @survey = Survey.find(params[:id])
  @survey.destroy
  redirect to ("/surveys")
end


# USERS ======================================
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
    session[:id] = @user.id
    redirect to "/user"
  else
   redirect to '/'
  end
end





