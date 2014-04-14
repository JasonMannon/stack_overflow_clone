class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.string :question_id
      t.string :comment_id

      t.timestamps
    end
  end
end
