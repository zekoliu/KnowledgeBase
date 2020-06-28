class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, through: :user_courses

  has_one_attached :main_pic
  has_many_attached :detail_pics
end
