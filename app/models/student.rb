class Student < ApplicationRecord
  belongs_to :user
  has_one :student
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :examinations
  has_many :teachers, through: :grades
end
