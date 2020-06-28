class User < ApplicationRecord
  has_one_attached :avatar, dependent: :purge

  has_many :moments, dependent: :destroy

  has_many :user_courses
  has_many :courses, through: :user_courses
end
