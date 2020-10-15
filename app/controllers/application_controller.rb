class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include ApplicationHelper

  rescue_from StandardError do |exception|
    # Add your own call to your exception notification system here.

    message = "\n#{exception.class} (#{exception.message}):\n"
    message << exception.annoted_source_code.to_s if exception.respond_to?(:annoted_source_code)
    logger.error("#{message}\n\n")

    render json: { message: 'Internal server error' }, status: :internal_server_error
  end
end
