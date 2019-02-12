class User < ApplicationRecord
  has_many :user_styles
  has_many :styles, through: :user_styles
end
