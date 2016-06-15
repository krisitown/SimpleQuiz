class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.integer :correct_id

      t.timestamps null: false
    end
  end
end
