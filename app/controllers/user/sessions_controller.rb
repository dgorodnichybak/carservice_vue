class User::SessionsController < User::BaseController
  skip_before_action :require_login!, only: [:create]

  def create
    session = User::UserSession.new(session_params).call

    if session
      render(
        json: session.user,
        serializer: UserSerializer,
        status: 201
      )
    else
      render json:
        { errors: [ { base: I18n.t('api.errors.base.unauthorized') } ] },
        status: 401
    end
  end

  def destroy
    current_session.destroy
    head :no_content
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end
