RSpec.describe User, type: :model do
  subject do
    User.create(
      email: 'example@test.com',
      name: 'sdf',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  it { is_expected.to have_one(:session).dependent(:destroy) }

  it { should validate_presence_of(:name).on(:create) }
  it { should validate_presence_of(:email).on(:create) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_length_of(:password).is_at_least(6).on(:create) }
end
