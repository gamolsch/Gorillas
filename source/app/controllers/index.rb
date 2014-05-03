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
