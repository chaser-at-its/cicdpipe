class ErrorsController < ApplicationController
  layout "staff"

  def not_found
    render status: :not_found
  end

  def unprocessable_entity
    render status: :unprocessable_entity
  end

  def internal_server_error
    render status: :internal_server_error
  end

  private

    def current_administrator; end

    def current_staff_member; end

    helper_method :current_administrator, :current_staff_member
end
