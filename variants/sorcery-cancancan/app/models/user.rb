class User < ActiveRecord::Base
  authenticates_with_sorcery!

  #validates :email, presence: true, uniqueness: true, email: true
  validates :email, presence: true, uniqueness: true 
  validates :password, length: { minimum: 1 }, if: :password_update?
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, if: :password_update?

  # FIXME
  def admin?
    true
  end

  private

  def password_update?
    password.present? || new_record?
  end
end
