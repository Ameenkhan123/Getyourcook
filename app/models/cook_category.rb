class CookCategory < ApplicationRecord
	has_many :cooks, :dependent => :destroy	
end
