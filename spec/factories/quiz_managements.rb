FactoryBot.define do
  factory :quiz_management do
    title             { Faker::Lorem.word }
    explanation       { Faker::Lorem.sentence }
    quiz_sets         { [
                      {question: Faker::Lorem.word, answer: Faker::Lorem.word},
                      {question: Faker::Lorem.word, answer: Faker::Lorem.word},
                      {question: Faker::Lorem.word, answer: Faker::Lorem.word}
                      ] }
    user_id           { Faker::Number.number(digits: 4) }
  end
end
