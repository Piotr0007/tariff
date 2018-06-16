class Course < ApplicationRecord

	has_many :user
	has_many :driver
end
