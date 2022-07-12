class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def index
  end
  
  def create
    book = Book.index(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def show
  end

  def edit
  end
end
