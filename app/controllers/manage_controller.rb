class ManageController < ApplicationController
  
  def tardies
  
  	@books = Book.all
  	@title = "Emprestimos atrasados"

  end
end
