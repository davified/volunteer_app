# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
# User.destroy_all
Skill.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'skills.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  s = Skill.new
  s.id = row['id']
  s.skill = row['skill']
  s.created_at = row['created_at']
  s.updated_at = row['updated_at']
  s.save
  puts "#{s.id}, #{s.skill}, #{s.created_at}, #{s.updated_at} saved"
end


tasks_csv_text = File.read(Rails.root.join('lib', 'seeds', 'tasks.csv'))
tasks_csv = CSV.parse(tasks_csv_text, :headers => true, :encoding => 'ISO-8859-1')
tasks_csv.each do |row|
  t = Task.new
  t.id = row['id']
  t.title = row['Title']
  t.description = row['description']
  t.images = row['images']
  t.start_date = row['start_date']
  t.end_date = row['start_date']
  t.start_time = row['start_time']
  t.end_time = row['start_time']
  t.address = row['address']
  t.country = row['country']
  t.no_of_volunteers_needed = row['no_of_volunteers_needed']
  t.no_of_volunteers_signed_up = row['no_of_volunteers_signed_up']
  t.owned_by_user_id = row['owned_by_user_id']
  t.save
  # puts "#{t.id}, #{t.title} and associated columns saved"
end

puts "There are now #{Task.count} rows in the tasks table"

# users = User.create([{username: 'davified',
#                       firstname: 'David',
#                       lastname: 'Tan',
#                       email: 'davified@gmail.com',
#                       is_organisation: 'false',
#                       categories: 'elderly',
#                       skills: 'befriending',
#                       images: 'https://c1.staticflickr.com/7/6150/5932366528_46703392d6_b.jpg',
#                       rating: '4'},
#
#                       {username: 'volunteer1',
#                       firstname: 'Denise',
#                       lastname: 'Chan',
#                       email: 'volunteer@gmail.com',
#                       is_organisation: 'false',
#                       categories: 'youth',
#                       skills: 'photography',
#                       images: 'https://lh5.googleusercontent.com/-6_pwkiZp5-A/AAAAAAAAAAI/AAAAAAAAFII/v_jXXN9rS38/photo.jpg',
#                       rating: '3'},
#
#                       {username: 'robb',
#                       firstname: 'Robert',
#                       lastname: 'Baratheon',
#                       email: 'ilovehunting@gmail.com',
#                       is_organisation: 'false',
#                       categories: 'elderly',
#                       skills: 'befriending',
#                       images: 'https://lh3.googleusercontent.com/-jkGsCQ_VDm4/AAAAAAAAAAI/AAAAAAAAAAA/ZEhC2NmPfcw/photo.jpg',
#                       rating: '5'}])
