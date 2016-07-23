class BooksController < ApplicationController
def index
  end
  def new
   @book = Book.find(params[:id])
  end

  def show
   @book = Book.find(params[:id])
  end
end
