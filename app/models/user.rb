class User < ApplicationRecord
  has_one :teacher
  has_one :student
  has_one :teacher_profile, through: :teacher
  has_one :student_profile, through: :student
end
