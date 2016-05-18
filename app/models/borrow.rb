class Borrow < ActiveRecord::Base
	has_one :booking
	has_many :books, through :booking
end
