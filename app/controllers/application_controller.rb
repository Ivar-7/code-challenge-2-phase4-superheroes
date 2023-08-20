class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

    private

    def not_found_response exception
        render json: { error: "#{exception.model} not found" }, status: :not_found
    end
end
