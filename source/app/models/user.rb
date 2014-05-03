class User < ActiveRecord::Base
  # Remember to create a migration!
  # include BCrypt
  has_many :user_choices
  has_many :answers, class_name: 'Choice',
            through: :user_choices
end
