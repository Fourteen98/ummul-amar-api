class Grade < ApplicationRecord
  has_many :examinations
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :subjects
  has_many :students
end
