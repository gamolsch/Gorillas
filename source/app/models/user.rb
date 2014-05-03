class User < ActiveRecord::Base

  include BCrypt
  #survey creator
  # Remember to create a migration!
  has_many :created_surveys, class_name: "Survey",
            foreign_key: :creator_id

  # has_many :completed_surveys
  # has_many :taken_surveys, :through => :completed_surveys, :source => :surveys

  has_many :user_choices
  has_many :answers, class_name: 'Choice',
            through: :user_choices

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


  # Remember to create a migration!
  # include BCrypt


end
