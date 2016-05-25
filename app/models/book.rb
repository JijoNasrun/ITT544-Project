class Book < ActiveRecord::Base
	belongs_to :booking
	validates :book_id, presence: true
	validates :book_title, presence: true
end
