class Car < ApplicationRecord
	belongs_to :user, optional: true

	has_attached_file :avatar, :styles =>{ :medium => "300x300>", :thumb => "100x100>" },:default_url => "car.png"

	validates_attachment_content_type :avatar,:content_type => /\Aimage\/.*\Z/
end