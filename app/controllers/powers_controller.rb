class PowersController < ApplicationController
    def index
        powers = Power.all
        render json: powers, except: [:created_at, :updated_at]
    end

    def show
        render json: Power.find(params[:id]), except: [:created_at, :updated_at]
    end

    def update
        power = Power.find(params[:id])
        if power.update(power_params)
         render json: power, except: [:created_at, :updated_at]
        else
         render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def power_params
        params.require(:power).permit(:description)
    end
end
