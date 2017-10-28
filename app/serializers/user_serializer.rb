class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :token

  def token
    object.session.token
  end
end

