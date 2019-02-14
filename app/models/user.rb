class User < ApplicationRecord
  has_many :favorites
  has_many :fighters, through: :favorites
  has_many :comments
  has_many :fighter_comments, through: :comments, source: :fighter

  validates :name, uniqueness: true
end
