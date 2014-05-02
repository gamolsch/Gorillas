class CreateUserSurveys < ActiveRecord::Migration
  def change
  	create_table :user_surveys do |t|

  		t.timestamps
  	end
  end
end
