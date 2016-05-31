class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_book

  def index
    @bookings = Booking.where("book_id = ? AND end_time >= ?", @book.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(book_id: @book.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:book_id, :start_time, :length))
    @booking.book = @book
    if @booking.save
      redirect_to book_bookings_path(@book, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to book_bookings_path(@book)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.book = @book

    if @booking.update(params[:booking].permit(:book_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to book_bookings_path(@book)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to book_booking_path(@book, @booking)
      else
        render 'new'
      end
  end

  def find_book
    if params[:book_id]
      @book = Book.find_by_id(params[:book_id])
    end
  end

end
