class AddImageIdsToTutorials < ActiveRecord::Migration[5.0]
  def change
    add_column :tutorials, :tryruby_image_id, :string
    add_column :tutorials, :trygit_image_id, :string
    add_column :tutorials, :terminal_image_id, :string
    add_column :tutorials, :html_image_id, :string
  end
end
