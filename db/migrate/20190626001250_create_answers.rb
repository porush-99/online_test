class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :q_answer
      t.boolean :correct_answer
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
