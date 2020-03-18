class PuppiesController < ApplicationController
    def index
        @puppies = Puppy.all

        render json: @puppies
    end

    def create
        @puppy = Puppy.new(puppy_params)
        if @puppy.save
            render: @puppy
        else
            render status:418
        end
    end

    private

    def puppy_params
        params.require(:puppy).permit([:name, :breed, :age])
    end
end
