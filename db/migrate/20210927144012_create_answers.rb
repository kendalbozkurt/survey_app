class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :question_option, index: true
      t.references :question, index: true, required: true

      t.string :answer_text, limit: 255
      t.timestamps
    end
  end
end
