class BooksController < ApplicationController
 def index

  end

  def new

   @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end

  def create
    @book = Book.find(params[:book])
    if @user.save
      redirect_to @book
    else
      render 'new'

  end
end
end
