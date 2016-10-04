# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# dan = User.create(name: "Dan the man!", email: "dan@adadevelopersacademy.org", bio: "Dan is the man!")

require 'csv'

CSV.foreach('seeds_csvs/posts.csv', :headers => true) do |csv_obj|
  Post.create(id: csv_obj['id'].to_i, title: csv_obj['title'], body: csv_obj['body'], author: csv_obj['author'])
end
