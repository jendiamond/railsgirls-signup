class Tutorial < ApplicationRecord
  attr_accessible :image,:tryruby_image,:trygit_image,:terminal_image,:htmlcss_image

mount_uploader :tryruby_image, PlacephotoUploader

  belongs_to :user
  has_attached_file :image, styles: { medium: "200x300>", thumb: "100x100>"},:storage => :cloudinary
  has_attached_file :tryruby_image, styles: { medium: "200x300>", thumb: "100x100>"},:storage => :cloudinary
  has_attached_file :trygit_image, styles: { medium: "200x300>", thumb: "100x100>"}:storage => :cloudinary
  has_attached_file :terminal_image, styles: { medium: "200x300>", thumb: "100x100>"}:storage => :cloudinary
  has_attached_file :htmlcss_image, styles: { medium: "200x300>", thumb: "100x100>"}:storage => :cloudinary
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :tryruby_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :trygit_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :terminal_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :htmlcss_image, content_type: /\Aimage\/.*\Z/

  def missing_image?(image)
    image.url.match(/missing.png/)
  end
end
