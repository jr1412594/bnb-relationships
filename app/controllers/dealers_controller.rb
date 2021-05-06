class DealersController < ApplicationController
    def index
        @dealers = Dealer.all 
        # render json: @dealers
    end

    def show
        @dealer = Dealer.find(params[:id])
        # render json: @dealer
    end

    def create
        @dealer = Dealer.new(dealer_params)
        if @dealer.valid?
        @dealer.save
        render('dealers/show')
        else 
        render json: :errors
        end
    end

    def update
        @dealer = Dealer.find(params[:id])
        @dealer.update(dealer_params)
        render('dealers/show')
    end


    private

    def dealer_params
        params.require(:dealer).permit(:name, :location)
    end
end
