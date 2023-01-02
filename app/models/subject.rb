class Subject < ApplicationRecord
  has_and_belongs_to_many :grades
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :student
  has_many :examinations
end
