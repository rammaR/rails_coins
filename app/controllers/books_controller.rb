class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @coin.save
         format.html {redirect_to @book, notice: "Coin was successfully created."}
         format.json {render :show, status: :created, localhost: @coin}
      else
         format.html { render :new }
         format.json { render json: @coin.erros, status: :unprocessable_entity }
      end
    end
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def book_params 
      params.require(:book).permit(:name)
    end

end
