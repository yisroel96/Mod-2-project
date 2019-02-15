class Fighter < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :comments
  has_many :user_comments, through: :comments, source: :user
end
