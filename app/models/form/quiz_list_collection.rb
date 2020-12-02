class Form::QuizListCollection
  FORM_COUNT = 5
  attr_accessor :quiz_lists

  def initialize(attributes = {})
    super attributes
    self.quiz_lists =FORM_COUNT.times.map {QuizList.new()} unless self.quiz_lists.present?
  end

  def product_attributes=(attributes)
    elf.quiz_lists = attributes.map {|_, v| QuizList.new(v)}
  end

  def save
    QuizList.transaction do
      self.quiz_lists.map do |product|
        if quiz_list.availability
          quiz_list.save
        end
      end
    end
      return true
    rescue => e
      return false
  end
end