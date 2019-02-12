class Style < ApplicationRecord
  has_many :content
  has_many :user_styles
  has_many :users, through: :user_styles
end
