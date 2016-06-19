class AddQuizIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :quiz_id, :reference
  end
end
