class Borrow < ActiveRecord::Base
	has_many :books
	has_one :fine
end
