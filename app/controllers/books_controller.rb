class BooksController < ApplicationController
 
  before_action :correct_user, only: [:edit, :update]

 def index

  @books = Book.all
  end

  def new
  @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] ="Book added successfully!" 
      redirect_to @book
    else
      render 'new'
   end
end

  private 

  def book_params
    params.require(:book).permit(:book_title, :category, :author, 
                                :isbn, :status)
end
end
