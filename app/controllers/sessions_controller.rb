    class SessionsController < ApplicationController
        def start
            session[:current_question] = 1
            session[:answers_right] = 0
            @current_question = Question.find(session[:current_question])
            render 'session'
        end
       
    def isAnswer
        @current_question = Question.find(session[:current_question])
        if Integer(params[:id]) == @current_question.correct_id
            session[:answers_right] += 1 
        end
        session[:current_question] += 1
        render 'session'
    end
end
