class AddAttachmentTryrubyImageTerminalImageTrygitImageHtmlcssImageToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.attachment :tryruby_image
      t.attachment :terminal_image
      t.attachment :trygit_image
      t.attachment :htmlcss_image
    end
  end

  def self.down
    remove_attachment :tutorials, :tryruby_image
    remove_attachment :tutorials, :terminal_image
    remove_attachment :tutorials, :trygit_image
    remove_attachment :tutorials, :htmlcss_image
  end
end
