require_relative './concerns/bookable'

class Booking < ActiveRecord::Base

  include Bookable


	has_many :books
end

