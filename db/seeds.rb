# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')
User.create(name: "Admin", email:"admin@example.com", password: "123456", admin: true)
User.create(name: "Oleg", email:"oleg@example.com", password: "123456")

Picture.create(title: "some title", image: File.new(fixtures_path.join('1.jpg')), user_id: 1)
Picture.create(title: "some title", image: File.new(fixtures_path.join('2.jpg')), user_id: 1)
Picture.create(title: "some title", image: File.new(fixtures_path.join('3.jpg')), user_id: 1)
Picture.create(title: "some title", image: File.new(fixtures_path.join('4.jpg')), user_id: 1)
Picture.create(title: "some title", image: File.new(fixtures_path.join('5.jpg')), user_id: 1)
Picture.create(title: "TITLE", image: File.new(fixtures_path.join('6.jpg')), user_id: 2)
Picture.create(title: "TITLE", image: File.new(fixtures_path.join('7.jpg')), user_id: 2)
Picture.create(title: "TITLE", image: File.new(fixtures_path.join('8.jpg')), user_id: 2)
Picture.create(title: "TITLE", image: File.new(fixtures_path.join('9.jpg')), user_id: 2)
Picture.create(title: "TITLE", image: File.new(fixtures_path.join('10.jpg')), user_id: 2)