class CreateChoices < ActiveRecord::Migration
	def change
  	create_table :choices do |t|

  		t.timestamps
  	end
  end
end
