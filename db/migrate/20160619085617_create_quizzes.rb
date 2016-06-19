class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :subject

      t.timestamps null: false
    end
  end
end
