# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Board.delete_all
Topick.delete_all
Post.delete_all

User.create! handle: "nixer", email: "nixer@tru.ru", avatar: "ava.jpg", moderator: false, admin: false 
Board.create! board_name: "Wild animals", topick_id: 1
Topick.create! theme: "Dolphins", post_id: 1, user_id: 1