class QuotesController < ApplicationController

  
    
    def index
        render json: Dragon.all
    end
    
    # def show
    #     render json: current_dragon, include: [ :abilities ]
    # end
    
    

end
