class HomeController < ApplicationController
  def index
  
    if params[:id] == ""
      @nothing = "You failed. Please enter a company ticker symbol"
    elsif 
      
      if params[:id]
        begin 
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "You must be dreaming, that stock doesn't exist....please try again."
        end
      end 
    end
    
    
  end  
  
  def about
  end
  
end
