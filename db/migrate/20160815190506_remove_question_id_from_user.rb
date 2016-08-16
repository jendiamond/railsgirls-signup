class RemoveQuestionIdFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :question_id, :integer
  end
end
