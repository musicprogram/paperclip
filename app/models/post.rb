class Post < ActiveRecord::Base
	has_attached_file :image, styles: { large: "600*600>", medium:"350*350>", thumb: "150*150#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
