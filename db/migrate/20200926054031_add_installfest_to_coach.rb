class AddInstallfestToCoach < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :installfest, :string
  end
end
