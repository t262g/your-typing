class QuizList < ApplicationRecord
  belongs_to :quiz
  with_options presence: true do
    validates :question
    validates :answer
  end
  
  def attributes
    { question: nil, answer: nil }
  end
end
