require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
<<<<<<< HEAD
  include Bookable
end
=======
	has_many :books
end
>>>>>>> 49681fdfe774c0744d3f5a5eed296b4604c93548
