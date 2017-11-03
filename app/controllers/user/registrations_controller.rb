class User
  class RegistrationsController < User::BaseController
    skip_before_action :require_login!, only: [:create]

    def create
      user = User.create(user_params)

      if user.valid?
        user.create_session
        render(json: user, serializer: UserSerializer, status: 201)
      else
        render(json: user.errors, status: 422)
      end
    end

    private

    def user_params
      params.permit(:email, :password, :name)
    end
  end
end
