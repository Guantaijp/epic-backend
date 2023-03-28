class BooksController < ApplicationController
  #index
  def index 
    book = Book.all
    render json: book
  end

  #show
  def show
    book = Book.find(params[:id])
    render json: book
  end

#create
  def create
    books = Book.create(books_params)
    render json: books
  end

#destroy
def destroy
  books = Book.find(params[id])
  books.destroy
  render json: books
end

#update
def update
    books = Book.find(params[:id])
    books.update(books_params)
    render json: books
end

private
  def books_params
    params.permit(:phone, :date, :capacity, :usr_id, :destnation_id)
  end
end