class DaysController < ApplicationController
    def index
        @days = Day.all
        render json: @days, include: [:logs, :marinelives]
    end

    def create
        @day = Day.create(date: params[:day])
        render json: @day
    end

    def show
        @day = Day.find(params[:id])
        render json: @day, include: [:logs, :marinelives]
    end

    def update
        @day = Day.find(params[:id])
        if @day.update(day_params)
            render json: @day
        end
    end

end
