class AddCancellationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cancellation, :boolean
  end
end
