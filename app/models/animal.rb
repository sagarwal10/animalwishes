class Animal < ActiveRecord::Base
  belongs_to :organization
  has_attached_file :picture, styles: { medium: "300x300#", small: "200x200#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
