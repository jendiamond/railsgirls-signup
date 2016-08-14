class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.boolean :boolean_question
      t.string :string_question
      t.text :text_question
      t.integer :integer_question

      t.timestamps
    end
  end
end
