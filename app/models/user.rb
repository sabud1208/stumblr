class User < ApplicationRecord
  has_secure_password

  has_many :user_styles
  has_many :styles, through: :user_styles

    validates :email, uniqueness: true
    validates :password, confirmation: true
end
