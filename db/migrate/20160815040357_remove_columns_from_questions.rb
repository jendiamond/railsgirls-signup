class RemoveColumnsFromQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :boolean_question
    remove_column :questions, :string_question
    remove_column :questions, :text_question
    remove_column :questions, :integer_question
  end
end
