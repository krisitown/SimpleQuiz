class QuestionsController < ApplicationController
    def new
        @question = Question.new
    end
    
    def create
        @question = Question.new(question_params)
        if(@question.save)
            flash[:success] = "Successfully added"
            redirect_to root_url
        else
            render 'new'
        end
    end         
    
    def show
        @question = Question.find(params[:id])
    end   
    
    private
        def question_params
            params.require(:question).permit(:question, :answer1, :answer2, :answer3, :answer4,
             :correct_id, :quiz_id)
        end
end
