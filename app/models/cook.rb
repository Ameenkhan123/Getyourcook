class Cook < ApplicationRecord
	ratyrate_rateable "speed", "engine", "price"
	has_many :reviews, :dependent => :destroy
	belongs_to :cook_category,optional: true
	geocoded_by :address  # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    mount_uploader :photo, ImageUploader
end
