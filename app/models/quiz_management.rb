class QuizManagement
  include ActiveModel::Model
  attr_accessor :title, :explanation, :user_id, :quiz_sets

  with_options presence: true do
    validates :title
    validates :explanation
    validates :user_id
  end

  validates :quiz_sets, length: { minimum: 3 }

  # def save
  #   quiz = Quiz.create(title: title, explanation: explanation, user_id: user_id)
  #   quiz_sets.each do |quiz_set|
  #     QuizList.create(question: quiz_set[:question], answer: quiz_set[:answer], quiz_id: quiz.id)
  #   end
  # end

  # def update(quiz)
  #   quiz.update(title: title, explanation: explanation, user_id: user_id)
  #   quiz.quiz_lists.each(&:destroy)
  #   quiz_sets.each do |quiz_set|
  #     QuizList.create(question: quiz_set[:question], answer: quiz_set[:answer], quiz_id: quiz.id)
  #   end
  # end
end
