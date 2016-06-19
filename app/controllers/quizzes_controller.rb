class QuizzesController < ApplicationController
    def new 
        @quiz = Quiz.new
    end
    
    def create
        @quiz = Quiz.new(quiz_params)
        flash[:success] = "Quiz Created successfully" if @quiz.save
        redirect_to '/quiz/' + @quiz.id.to_s + '/add_question'
    end 
    
    private
    
    def quiz_params
        params.require(:quiz).permit(:name, :subject)
    end
end
