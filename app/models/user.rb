class User < ApplicationRecord
  validates :first_name, presence: true, length: { in: 2..60 }
  validates :last_name, presence: true, length: { in: 2..60 }
  validates :username, presence: true, uniqueness: true , length: { in: 2..20 }
  validates :email, confirmation: true, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :email_confirmation, presence: true
  validates :password, presence: true, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence:true
  validates :password_hint, length: { maximum: 100 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
