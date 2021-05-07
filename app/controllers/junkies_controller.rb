class JunkiesController < ApplicationController

    def index
        @junkies = Junkie.all
    end

    def show
        @junkie = Junkie.find(params[:id])
    end

    def create
    #   @junkie = Junkie.create(name: params[:name], job: params[:job])
      @junkie = Junkie.create(junk_params)
      render('junkies/show')
    end

    private

    def junk_params
        params.require(:junkie).permit(:job, :name)
    end

end
