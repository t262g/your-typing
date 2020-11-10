class QuizList < ApplicationRecord
  def attributes
    { question: nil, answer: nil }
  end

  belongs_to :quiz
end
