# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

School.create!(
  name: Faker::Educator.university,
  date_created: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  address: Faker::Address.full_address, motto: Faker::Company.catch_phrase,
  mission: Faker::Company.bs,
  vision: Faker::Company.bs,
  core_value: Faker::Company.bs,
  email: Faker::Internet.email
)
puts("School created")

# sections
section = ["JHS", "Primary", "Kindergarten"]

# for teachers
10.times  do |teacher|
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    other_names: Faker::Name.middle_name
  )
  puts("User #{teacher} created")
  Teacher.create(user_id: teacher + 1, teacher_id_number: Faker::IDNumber.valid)
  puts("Teacher #{teacher} created")
  TeacherProfile.create!(
    teacher_id: teacher + 1,
    photo: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg", set: "set4", bgset: "bg1"),
    identification_number: Faker::Alphanumeric.alphanumeric(number: 10),
    date_of_birth: Faker::Date.between(from: '1998-09-23', to: '2002-09-25'),
    address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    date_started: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    date_ended: Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
  )
  puts("Teacher profile #{teacher} created")
  Subject.create!(name: Faker::Educator.subject, section: section.sample)
  puts("Subject #{teacher} created")
end


10.times do |grade|
  Grade.create!(
    name: Faker::Creature::Bird.common_family_name,
    class_number: grade,
    occupancy: Faker::Number.between(from: 10, to: 30),
    section: section.sample
  )
  puts("Grade #{grade} created")
end

10.times  do |student|
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    other_names: Faker::Name.middle_name
  )
  puts("User #{student} created")
  student_user = Student.create!(user_id: user.id, index_number: Faker::IDNumber.valid, grade_id: student + 1)
  puts("Student #{student} created")
  StudentProfile.create!(
    student_id: student_user.id, address: Faker::Address.full_address,
    photo: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg", set: "set4", bgset: "bg1") ,
    identification_number: Faker::Alphanumeric.alphanumeric(number: 10),
    date_of_birth: Faker::Date.between(from: '1998-09-23', to: '2002-09-25'),
    date_of_addmission: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    date_of_completion: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    father_first_name: Faker::Name.first_name, father_last_name: Faker::Name.last_name,
    father_phone_number: Faker::PhoneNumber.cell_phone, father_occupation: Faker::Job.title,
    father_email: Faker::Internet.email, mother_first_name: Faker::Name.first_name,
    mother_last_name: Faker::Name.last_name, mother_phone_number: Faker::PhoneNumber.cell_phone,
    mother_occupation: Faker::Job.title, mother_email: Faker::Internet.email
  )
  puts("Student profile #{student} created")
  Examination.create!(
    year: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    term: Faker::Number.between(from: 1, to: 3),
    classwork: Faker::Number.between(from:0, to: 10),
    homework: Faker::Number.between(from:0, to:10),
    mid_term: Faker::Number.between(from:0, to: 10),
    date_started: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    date_ended: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    grade_id: student + 1,
  )
  puts("Examination #{student} created")
end