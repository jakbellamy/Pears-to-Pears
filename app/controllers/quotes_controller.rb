class QuotesController < ApplicationController

  
    
    def index
        render json: Quote.all
    end
    
    # def show
    #     render json: current_dragon, include: [ :abilities ]
    # end
    
    

end
