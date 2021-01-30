# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..3).each do |number|
  User.create(name: 'test'+number.to_s , email: "test"+number.to_s+"@gmail.com", password: '1234')
end

(1..3).each do |user_id|
  (1..10).each do |micropost_id|
    Micropost.create(content: 'test'+user_id.to_s+'\'s No.'+micropost_id.to_s+' micropost', user_id: user_id)
  end
end
