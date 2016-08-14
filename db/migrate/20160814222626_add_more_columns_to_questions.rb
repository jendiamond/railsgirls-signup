class AddMoreColumnsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :continue, :string
    add_column :questions, :support, :string
    add_column :questions, :experience, :string
  end
end
