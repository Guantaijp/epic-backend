class BooksController < ApplicationController

  skip_before_action :authorized, only: [:index, :create, :show]

  # GET /books or /books.json
  def index
    @books = Book.all
    render json: @books
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
    params.permit(:phone, :date, :capacity, :price, :usr_id, :destnation_id)
  end
end