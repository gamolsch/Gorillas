class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :created_surveys, class_name: "Survey",
            foreign_key: "survey_creator_id"


  has_many :user_surveys
  has_many :completed_surveys, class_name: "Survey",
            through: :user_surveys


  # include BCrypt
end
