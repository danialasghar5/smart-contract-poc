# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


c1 = Course.create!(title: 'Art', desc: 'This is a one-week art course', start_date: '2023-02-6 08:00:00', end_date: '2023-02-10 16:30:00') unless Course.find_by(title:'Art').present?
c2 = Course.create!(title: 'Music', desc: 'This is a one-week music course', start_date: '2023-02-13 08:00:00', end_date: '2023-02-17 16:30:00') unless Course.find_by(title:'Music').present?
c3 = Course.create!(title: 'Computers', desc: 'This is a one-week computers course', start_date: '2023-02-20 08:00:00', end_date: '2023-02-24 16:30:00') unless Course.find_by(title:'Computers').present?

Teacher.create!(password: 'password', password_confirmation: 'password', email: 'teacher@school.com') unless Teacher.find_by(email:'teacher@school.com').present?

s1 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student1@school.com') unless Student.find_by(email:'student1@school.com').present?
s2 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student2@school.com') unless Student.find_by(email:'student2@school.com').present?
s3 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student3@school.com') unless Student.find_by(email:'student3@school.com').present?
s4 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student4@school.com') unless Student.find_by(email:'student4@school.com').present?
s5 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student5@school.com') unless Student.find_by(email:'student5@school.com').present?
s6 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student6@school.com') unless Student.find_by(email:'student6@school.com').present?
s7 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student7@school.com') unless Student.find_by(email:'student7@school.com').present?
s8 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student8@school.com') unless Student.find_by(email:'student8@school.com').present?
s9 = Student.create!(password: 'password', password_confirmation: 'password', email: 'student9@school.com') unless Student.find_by(email:'student9@school.com').present?

Enrollment.create!(student_id: s1.id, course_id: c1.id) unless s1.nil? || Enrollment.where(student_id: s1.id, course_id: c1.id).any?
Enrollment.create!(student_id: s2.id, course_id: c1.id) unless s2.nil? || Enrollment.where(student_id: s2.id, course_id: c1.id).any?
Enrollment.create!(student_id: s3.id, course_id: c1.id) unless s3.nil? || Enrollment.where(student_id: s3.id, course_id: c1.id).any?
Enrollment.create!(student_id: s4.id, course_id: c2.id) unless s4.nil? || Enrollment.where(student_id: s4.id, course_id: c2.id).any?
Enrollment.create!(student_id: s5.id, course_id: c2.id) unless s5.nil? || Enrollment.where(student_id: s5.id, course_id: c2.id).any?
Enrollment.create!(student_id: s6.id, course_id: c2.id) unless s6.nil? || Enrollment.where(student_id: s6.id, course_id: c2.id).any?
Enrollment.create!(student_id: s7.id, course_id: c3.id) unless s7.nil? || Enrollment.where(student_id: s7.id, course_id: c3.id).any?
Enrollment.create!(student_id: s8.id, course_id: c3.id) unless s8.nil? || Enrollment.where(student_id: s8.id, course_id: c3.id).any?
Enrollment.create!(student_id: s9.id, course_id: c3.id) unless s9.nil? || Enrollment.where(student_id: s9.id, course_id: c3.id).any?
