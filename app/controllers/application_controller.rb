class ApplicationController < ActionController::API
    def render_not_found
        render json: {error: "404 Item Not Found"}, status: :not_found
    end

    def render_incomplete_entry
        render json: { error: invalid.record.errors }, status: :not_found
    end
end
