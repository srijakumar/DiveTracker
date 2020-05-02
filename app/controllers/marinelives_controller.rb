class MarinelivesController < ApplicationController
    def create
        @marinelife = Marinelife.create(content: params[:marinelife], day_id: params[:day][:id])
        render json: @marinelife
    end

    def destroy
        marinelife = Marinelife.find_by(id: params[:id])
        marinelife.destroy
        render json: marinelife
    end

end
