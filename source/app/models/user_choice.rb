class UserChoice < ActiveRecord::Base
  belongs_to :answer, class_name: "Choice", foreign_key: "choice_id"
  belongs_to :responder, class_name: "User", foreign_key: "user_id"
end
