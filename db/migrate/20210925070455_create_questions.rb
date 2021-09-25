class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :survey, index: true, required: true
      t.string :question

      t.string :question_type
      t.timestamps
    end
  end
end
