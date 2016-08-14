class CreateTutorials < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorials do |t|
      t.boolean :try_ruby
      t.boolean :terminal
      t.boolean :try_git
      t.boolean :html_css
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
