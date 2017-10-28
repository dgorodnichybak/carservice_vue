class User::BaseController < ActionController::Base
  before_action :require_login!

  def require_login!
    return true if authenticate_token
    render json: { errors: [ { base: I18n.t('api.errors.base.unauthorized') } ] }, status: 401
  end

  def current_user
    @current_user ||= current_session&.user
  end

  def current_session
    authenticate_token
  end

  private

  def authenticate_token
    authenticate_with_http_token do |token, options|
      Session.find_by(token: token)
    end
  end
end
