class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :zip_code
      t.string :twitter_handle
      t.string :github_user_name
      t.boolean :over_21
      t.integer :age
      t.string :operating_system
      t.datetime :workshop
      t.string :rating
      t.string :coach
      t.string :pair
      t.boolean :accepted
      t.boolean :attended
      t.boolean :phase_five_coach

      t.timestamps
    end
  end
end
