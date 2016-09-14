class AddDaysToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :days, :string
    add_column :coaches, :operating_system, :string
    add_column :coaches, :phone, :string
    add_column :coaches, :spokeo, :string
  end
end
