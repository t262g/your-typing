class Quiz < ApplicationRecord
  belongs_to :user
  has_many :quiz_lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  with_options presence: true do
    validates :title
    validates :explanation
  end
end
