class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  belongs_to :survey_creator, class_name: "User"
end
