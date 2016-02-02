class Upload < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "300x300>", thumb: "120x120>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
