class BooksController < ApplicationController
 
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy


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

    def destroy
      Book.find(params[:id]).destroy
      flash[:succes] = "Book deleted!"
      redirect_to books_url

    end
end

  private 

  def book_params
    params.require(:book).permit(:book_title, :category, :author, 
                                :isbn, :status)
end
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
