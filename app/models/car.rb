class Car < ApplicationRecord
	belongs_to :user, optional: true

	has_attached_file :avatar, :styles =>{ :medium => "1000x1000>", :thumb => "400x400>" },:default_url => "car.png"

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
