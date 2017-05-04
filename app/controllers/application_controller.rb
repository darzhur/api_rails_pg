class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do
    render json: {error: 'No such record in Database', status: not_found}
  end
end
