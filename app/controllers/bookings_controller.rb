class BookingsController < ApplicationController
  
  def index
    @book = Book.find(params[:book_id])
    @user = User.find_by(id: session[:user_id])
  end

  def new
      
  end

  def create
      @book = Book.find(params[:book_id])
      @user = User.find_by(id: session[:user_id])
      @booking = @book.bookings.create(start_time: "#{booking_params[:start_time]}", end_time: "#{booking_params[:end_time]}", user_id: "#{@user.id}")
     
    
  end

  def show
    
  end

  def destroy
    
  end

  def edit
    
  end

  def update
  

  end

   def booking_params
   
    params.require(:booking).permit(:start_time,:end_time)
  end



 
end
