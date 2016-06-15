class Session < ActiveRecord::Base
    attr_accessor :questionNumber, :currentQuestion, :correctQuestions
    
    def start
        self.questionNumber = 1
        self.correctQuestions = 0
    end
end
