class CreateUserChoices < ActiveRecord::Migration
	def change
  	create_table :user_choices do |t|
  		t.belongs_to :user
  		t.belongs_to :choice

  		t.timestamps
  	end
  end
end
