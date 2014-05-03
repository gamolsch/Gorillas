class CreateSurveys < ActiveRecord::Migration
	def change
  	create_table :surveys do |t|
  		t.integer :survey_creator_id
      t.string :title

  		t.timestamps
  	end
  end
end
