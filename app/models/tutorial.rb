class Tutorial < ApplicationRecord

mount_uploader :tryruby_image, PlacephotoUploader

  belongs_to :user
  has_attached_file :image, styles: { medium: "200x300>", thumb: "100x100>"}
  has_attached_file :tryruby_image, styles: { medium: "200x300>", thumb: "100x100>"}
  has_attached_file :trygit_image, styles: { medium: "200x300>", thumb: "100x100>"}
  has_attached_file :terminal_image, styles: { medium: "200x300>", thumb: "100x100>"}
  has_attached_file :htmlcss_image, styles: { medium: "200x300>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :tryruby_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :trygit_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :terminal_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :htmlcss_image, content_type: /\Aimage\/.*\Z/

  def missing_image?(image)
    image.url.match(/missing.png/)
  end
end
