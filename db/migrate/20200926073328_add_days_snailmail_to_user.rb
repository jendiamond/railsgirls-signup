class AddDaysSnailmailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :days, :string
    add_column :users, :snailmail, :string
  end
end
