class AddAttachmentImageToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tutorials, :image
  end
end
