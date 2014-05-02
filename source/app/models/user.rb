class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt
end
