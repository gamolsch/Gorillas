class CreateQuestions < ActiveRecord::Migration
	def change
  	create_table :questions do |t|
  		t.belongs_to :survey
  		t.string :question

  		t.timestamps
  	end
        create_table :surveys do |t|
      t.string :title

      t.belongs_to :creator
      t.timestamps
    end
      create_table :users do |t|
      t.string :email, :first_name, :last_name, :password_hash

      t.timestamps
    end
        create_table :choices do |t|
      t.belongs_to :question
      t.string :choice

      t.timestamps
    end
        create_table :user_choices do |t|
      t.belongs_to :user
      t.belongs_to :choice

      t.timestamps
    end
        create_table :completed_surveys do |t|
      t.belongs_to :survey
      t.belongs_to :user
      t.integer :survey_taker_id

      t.timestamps
    end
  end
end
