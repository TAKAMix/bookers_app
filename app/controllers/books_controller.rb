class BooksController < ApplicationController
  def new
  end

  def index
     @book = Book.new
     @books = Book.all
  end
  
   #バリデーションの実装
  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(@book.id)
    else
      render :new
  end
end

  def show
     @book = Book.find(params[:id])
  end

  def edit
     @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)  
  end
  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books'
  end
  
  
   private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
