class BooksController < ApplicationController

  def index
    
    @user = User.find(session[:user_id])
    @books = Book.all

    
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      name = @book.name
      isbn = @book.isbn
      author = @book.author
      publisher = @book.author
      redirect_to books_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create book. Please try again"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update book_params
    if @book.save
      flash[:notice] = "Your book was updated succesfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def book_params
      params.require(:book).permit(:id,:name, :delete, :author, :publisher, :isbn,)
    end

end
