response = RestClient.get(
 'https://therundown-therundown-v1.p.rapidapi.com/sports/2/events/2019-11-03?include=scores',
	"X-RapidAPI-Key" => '184481b68fmsh1d43618c3feaa81p104e7fjsnfe06f0a5c80e'
)
json_response=JSON.parse(response.body)

event = json_response["events"].first
team1 = event["teams"].first
team2 = event["teams"].second

if team1["is_home"] 
	home_team = Team.create(name: team1["name"], api_id: team1["team_normalized_id"])
	away_team = Team.create(name: team2["name"], api_id: team2["team_normalized_id"])
else 
	home_team = Team.create(name: team2["name"], api_id: team2["team_normalized_id"])
	away_team = Team.create(name: team1["name"], api_id: team1["team_normalized_id"])
end

game = Game.create(ht_id: home_team.id, at_id: away_team.id, api_event_id: event["event_id"])
 # "teams": [
 #                {
 #                    "team_id": 37847,
 #                    "team_normalized_id": 81,
 #                    "is_away": true,
 #                    "is_home": false,
 #                    "name": "Chicago Bears"
 #                },
 #                {
 #                    "team_id": 37567,
 #                    "team_normalized_id": 79,
 #                    "is_away": false,
 #                    "is_home": true,
 #                    "name": "Philadelphia Eagles"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
