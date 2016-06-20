    class SessionsController < ApplicationController
        def start
            session[:current_question] = 0
            session[:answers_right] = 0
            session[:questions] = Quiz.find(params[:id]).questions
            session[:quiz_id] = params[:id]
            @current_question = session[:questions][0]
            render 'session'
        end
       
    def isAnswer
        @current_question = session[:questions][session[:current_question]]
        if Integer(params[:id]) == @current_question["correct_id"]
            session[:answers_right] += 1
        end
        session[:current_question] += 1
        if session[:questions].length > session[:current_question]
            @current_question = session[:questions][session[:current_question]]
            render 'session'
        else
            render 'finish'
        end
    end
end
