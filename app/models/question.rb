class Question < ActiveRecord::Base
    validates :correct_id, presence: true, length: {maximum: 4}
    validates :question, presence: true
    validates :answer1, presence: true
    validates :answer2, presence: true
    validates :answer3, presence: true
    validates :answer4, presence: true
end
