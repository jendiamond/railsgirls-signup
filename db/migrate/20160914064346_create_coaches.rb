class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :twitter
      t.string :github
      t.string :job
      t.string :student1
      t.string :student2
      t.boolean :attended_as_student
      t.string :coached_april_13
      t.string :coached_march_14
      t.string :coached_april_15
      t.string :coached_august_15
      t.string :coached_march_16
      t.text :notes

      t.timestamps
    end
  end
end
