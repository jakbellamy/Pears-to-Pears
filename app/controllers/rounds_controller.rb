class RoundsController < ApplicationController

    before_action :define_current_round
    
    def index
        render json: Round.all
    end
    
    def show
        render json: current_round
    end
    
    def update
        current_round.update(round_params)
        render json: current_round
    end
    
    def destroy
        current_round.destroy
        render json: round
    end
    
    def create
        round = Round.create(round_params)
        render json: round
    end

    def round_params
        params.permit(:name, :description, :image, abilities_attributes: [ [ :id, :name ] ] )
    end
    
    def define_current_round
        if(params[:id])
            @current_round = Round.find(params[:id])
        end
    end
    
    def current_round
        @current_round
    end
end
