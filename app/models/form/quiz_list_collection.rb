class Form::QuizListCollection < Form::Base
  FORM_COUNT = 10
  attr_accessor :quiz_lists, :quiz_id

  def initialize(attributes = {})
    binding.pry
    super attributes
    self.quiz_lists = FORM_COUNT.times.map { QuizList.new() } unless self.quiz_lists.present?
  end

  def quiz_lists_attributes=(attributes)
    self.quiz_lists = attributes.map { |_, v| QuizList.new(v) }
  end

  def save
    quiz_list.transaction do
      self.quiz_lists.map do |quiz_list|
        if quiz_list.question != nil || quiz_list.answer != nil
          quiz_list.save
        end
      end
    end
      return true
    rescue => e
      return false
  end
end