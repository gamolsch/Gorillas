class Survey < ActiveRecord::Base
  # Remember to create a migration!

  has_many :questions
  belongs_to :survey_creator, class_name: "User"

  belongs_to :creator, class_name: "User", foreign_key: :creator_id

  # has_many :completed_surveys
  # has_many :survey_takers,
  #           through: :completed_surveys,
  #           class_name: "User"

end
