class Organization < ActiveRecord::Base
  has_many :animals, dependent: :destroy
  has_attached_file :logo, styles: { small: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  def organizationName
     "#{name}"
  end
end
