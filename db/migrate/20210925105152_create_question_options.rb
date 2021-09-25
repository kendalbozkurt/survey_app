class CreateQuestionOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :question_options do |t|
      t.references :question, index: true, required: true
      t.string :name

      t.timestamps
    end
  end
end
