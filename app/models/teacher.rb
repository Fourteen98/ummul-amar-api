class Teacher < ApplicationRecord
  belongs_to :user
  has_one :student_profile
  has_and_belongs_to_many :students
  has_and_belongs_to_many :grades
  has_many :students, through: :grades
end
