class ApplicationController < ActionController::API
    
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_incomplete_entry

    private

    def render_not_found()
        render json: { error: "404 Item Not Found" }, status: :not_found
    end

    def render_incomplete_entry(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
