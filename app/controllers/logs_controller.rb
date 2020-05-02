class LogsController < ApplicationController
    def create
        @log = Log.create(logs_params, day_id: params[:day][:id])
        render json: @log
    end

    def destroy
        log = Log.find_by(id: params[:id])
        log.destroy
        render json: log
    end

private
    def logs_params

    end
end
