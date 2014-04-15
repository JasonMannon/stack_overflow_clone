class AddTopAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :top_answer, :boolean
  end
end
