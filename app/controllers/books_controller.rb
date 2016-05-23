class BooksController < ApplicationController
	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		@book.save
		redirect_to @book
	end

	private
		def book_params
			params.require(:book).permit(:book_id, :book_isdn, :book_title, :book_author, :book_status, :book_edition, :book_image)
		end
end
