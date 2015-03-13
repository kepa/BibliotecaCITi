class ManageController < ApplicationController
  
  def tardies
  
  	@books = Book.all
  	@title = "Emprestimos atrasados"

  end

  def home
  	@books = Book.all
  	@title = "Inicial"
  end	

end
