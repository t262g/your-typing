require 'rails_helper'

RSpec.describe QuizManagement, type: :model do
  describe 'クイズ新規作成' do
    before do
      @quiz_management = FactoryBot.build(:quiz_management)
    end

    context 'クイズ作成がうまくいくとき' do
      it '正しく入力されているとき' do
        expect(@quiz_management).to be_valid
      end

      it 'クイズが4問以上入力されているときも作成できる' do
        100.times do
          new_quiz_set = { question: Faker::Lorem.word, answer: Faker::Lorem.word }
          @quiz_management.quiz_sets << new_quiz_set
        end
        expect(@quiz_management).to be_valid
      end
    end

    context 'クイズ作成がうまくいかないとき' do
      it 'タイトルが入力されていない' do
        @quiz_management.title = nil
        @quiz_management.valid?
        expect(@quiz_management.errors.full_messages).to include "Title can't be blank"
      end

      it 'クイズの説明が入力されていない' do
        @quiz_management.explanation = nil
        @quiz_management.valid?
        expect(@quiz_management.errors.full_messages).to include "Explanation can't be blank"
      end

      it 'クイズが3セット未満である' do
        @quiz_management.quiz_sets.shift
        @quiz_management.valid?
        expect(@quiz_management.errors.full_messages).to include 'Quiz sets is too short (minimum is 3 characters)'
      end

      it 'クイズが1問も入力されていない' do
        @quiz_management.quiz_sets = []
        @quiz_management.valid?
        expect(@quiz_management.errors.full_messages).to include 'Quiz sets is too short (minimum is 3 characters)'
      end

      it 'クイズにユーザーが紐づいていない' do
        @quiz_management.user_id = nil
        @quiz_management.valid?
        expect(@quiz_management.errors.full_messages).to include "User can't be blank"
      end
    end
  end
end
