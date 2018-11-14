class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :content
      t.string :quiz_type
      t.integer :mode

      t.timestamps
    end
  end
end
