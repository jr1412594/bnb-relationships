class JunkiesController < ApplicationController

    def index
        @junkies = Junkie.all
    end

    def create
        @junkie = Junkie.new(junkie_params)
        if @junkie.valid?
            @junkie.save
            render json: @junkie
            # render('junkies/show')
        else
        render json: :errors
        end
    end

    private

    def junkie_params
        params.require(:junkie).permit(:name, :job)
    end

end
