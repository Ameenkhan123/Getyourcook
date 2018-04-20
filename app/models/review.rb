class Review < ApplicationRecord	
	belongs_to :user,optional: true
	belongs_to :cook,optional: true
end
