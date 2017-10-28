class User::UserSession
  attr_reader :email, :password

  def initialize(params)
    @email = params.fetch(:email)
    @password = params.fetch(:password)
  end

  def call
    authenticate!
  end

  private

  def authenticate!
    user = User.find_by(email: email)

    if user && user.authenticate(password)
      user.session ? user.session.regenerate_token : user.create_session
      return user.session
    end
  end

end
