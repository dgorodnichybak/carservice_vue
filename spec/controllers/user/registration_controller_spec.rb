RSpec.describe User::RegistrationsController, type: :controller do
  describe '#create' do
    let(:valid_params) do
      {
        email: 'test@example.com',
        name: 'Piter Griffin',
        password: 'password',
        password_confirmation: 'password'
      }
    end

    let(:invalid_params) do
      {
        email: 'testexample.com',
        name: '',
        password: 'password',
        password_confirmation: 'password1'
      }
    end

    context 'valid params' do
      before { post :create, params: valid_params }

      it 'returns 201 http status' do
        expect(response).to have_http_status(201)
      end

      it 'return required user data' do
        expect(response.body).to match_response_schema('user')
      end
    end

    context 'invalid params' do
      before do
        post :create, params: invalid_params
      end

      it 'returns 422 http status' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
