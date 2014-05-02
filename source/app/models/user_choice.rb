class UserChoice < ActiveRecord::Base
  has_many :users
  has_many :choices
end
