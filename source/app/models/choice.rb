class Choice < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_choices
  has_many :responders, class_name: 'User',
            through: :user_choices
end
