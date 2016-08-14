class AddColumnsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :newbie, :boolean
    add_column :questions, :html_css, :boolean
    add_column :questions, :tutorials, :boolean
    add_column :questions, :study_group, :boolean
    add_column :questions, :program, :boolean
    add_column :questions, :website, :boolean
    add_column :questions, :work, :boolean
    add_column :questions, :bootcamp, :boolean
    add_column :questions, :compsci, :boolean
    add_column :questions, :rlsgrl_rlsbrg, :boolean
  end
end
