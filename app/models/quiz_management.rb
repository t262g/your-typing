class QuizManagement
  include ActiveModel::Model
  attr_accessor :title, :explanation, :user_id, :quiz_sets

  with_options presence: true do
    validates :title
    validates :explanation
    validates :quiz_sets
    validates :user_id
  end

  def save
    quiz = Quiz.create(title: title, explanation: explanation, user_id: user_id)
    quiz_sets.each do |quiz_set|
      QuizList.create(question: quiz_set[:question], answer: quiz_set[:answer], quiz_id: quiz.id) 
    end
  end

end