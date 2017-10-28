class Session < ApplicationRecord
  has_secure_token :token

  belongs_to :user

  before_save :update_expires_at
  before_update :update_expires_at, if: :token_changed?

  private

  def update_expires_at
    self.expires_at = 2.weeks.from_now
  end
end
