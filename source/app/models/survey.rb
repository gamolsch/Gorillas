class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
end
