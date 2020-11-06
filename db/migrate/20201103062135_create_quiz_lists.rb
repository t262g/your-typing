class CreateQuizLists < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_lists do |t|
      t.text :question, null: false
      t.string :answer, null: false
      t.references :quiz, foreign_key: true
      t.timestamps
    end
  end
end
