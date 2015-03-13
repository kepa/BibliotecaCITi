class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def pesquisa
    if params[:search]
      @pesquisa = Book.search(params[:search])
    else
      @pesquisa = []
    end
  end 

end
