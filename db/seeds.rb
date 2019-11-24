response = RestClient::Request.execute (
	mathod: :get,
	url: 'https://therundown-therundown-v1.p.rapidapi.com/sports/2/events/2019-11-03?include=scores',
	headers: {api_key: '184481b68fmsh1d43618c3feaa81p104e7fjsnfe06f0a5c80e'}
	)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
