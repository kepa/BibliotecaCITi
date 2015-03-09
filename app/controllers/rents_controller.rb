class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rents = Rent.all
    respond_with(@rents)
  end

  def new
    @book = Book.find(params[:book_id])
    @rent = @book.rents.new
    @title = "Aluguel do livro " + @book.title 

    respond_with(@rent)
  end

  def create
    @book = Book.find(params[:book_id])
    
    if @book.rents.empty? 
      
      @rent = @book.rents.new(rent_params)
      @rent.save
      respond_to do |format|
        if @rent.save
          @book.update(taken: true)
          @book.save
          RentMailer.delay(run_at: 2.minutes.from_now).rent_confirmation(@rent)
          RentMailer.delay(run_at: @rent.due_date).rent_warning(@rent)
          RentMailer.delay(run_at: @rent.due_date).rent_end(@rent)
          format.html { redirect_to @rent.book, notice: 'Parabéns livro alugado!' }         
        else
          format.html { render :new }
        end
      end  

    else   
      respond_to do |format|
         format.html { redirect_to @book, notice: 'Livro já alugado!' } 
      end 
    end
     
  end

  def update
    @rent.update(rent_params)
    #respond_with(@rent)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @rent.destroy
    respond_to do |format|
      if @rent.save
        @book.update(taken: false)
        @book.save
        format.html { redirect_to @rent.book, notice: 'Parabéns livro devolvido!' }
      else
        format.html { render :new }
      end
    end  
  end

  private
    def set_rent
      @rent = Rent.find(params[:id])
    end

    def rent_params
      params.require(:rent).permit(:name, :email, :due_date)
    end
end
