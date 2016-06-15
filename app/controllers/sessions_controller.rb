    class SessionsController < ApplicationController
        def start
            session[:current_question] = 1
            session[:correct_answers] = 0
            @currentQuestion = Question.find(session[:current_question])
            render 'session'
        end
        
    def isAnswer?(answerNumber)
        if answerNumber == @currentSession.correct_id
            @correctSession.correctQuestions += 1
            true
        else
            false
        end
    end
    
    def next
        session[:current_question] += 1
        @currentQuestion = Question.find(session[:current_question])
        render 'session'
    end
end
