RSpec.describe User::SessionsController, type: :controller  do
  describe '#create' do
    let!(:user){ create :user, email: 'foo@bar.baz', password: 'password' }

    before do
      post :create, params: {email: user.email, password: user.password}
    end

    it 'returns 201 http status' do
      expect(response).to have_http_status(201)
    end
  end

  describe '#destroy' do
    let(:user) { create :user }
    let!(:session) { create :session, user: user }

    before do
      request.headers['Authorization'] = "Token token=#{session.token}"
      delete :destroy, params: {}
    end

    it 'returns 204 https status' do
      expect(response).to have_http_status(204)
    end
  end
end
