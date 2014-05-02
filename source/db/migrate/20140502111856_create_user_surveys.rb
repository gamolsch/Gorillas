class CreateUserSurveys < ActiveRecord::Migration
  def change
  	create_table :user_surveys do |t|
  		t.belongs_to :survey
  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
