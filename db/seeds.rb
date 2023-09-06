# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    date_of_birth: Date.today - 20.years
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
end


Course.create(name: 'Ruby on Rails bootcamp', description: 'Pending')
Course.create(name: 'ReactJs bootcamp', description: 'Pending')
Course.create(name: 'Angular Js bootcamp', description: 'Pending')
Course.create(name: 'NodeJs bootcamp', description: 'Pending')
Course.create(name: 'Java Bootcamp', description: 'Pending')
Course.create(name: 'Python Bootcamp', description: 'Pending')

Project.create(name: 'Driver App', description: 'This project is Pending')
Project.create(name: 'Supply Chain Management', description: 'This project is completed')
Project.create(name: 'Driver App', description: 'This project is Pending')
Project.create(name: 'Supply Chain Management', description: 'This project is completed=')
Project.create(name: 'Driver App', description: 'This project is Pending')
Project.create(name: 'Supply Chain Management', description: 'This project is completed')