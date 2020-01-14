class TheRundown

	def self.get_games(week, season)
		response = RestClient.get(
		 'https://therundown-therundown-v1.p.rapidapi.com/sports/2/events/?include=scores,include=date',
			"X-RapidAPI-Key" => '184481b68fmsh1d43618c3feaa81p104e7fjsnfe06f0a5c80e'
		)
		json_response=JSON.parse(response.body)

		json_response["events"].each do |e|
			team1 = e["teams"].first
			team2 = e["teams"].second


			if team1["is_home"] 
				home_team = Team.find_or_create_by(name: team1["name"], api_team_id: team1["team_normalized_id"])
				away_team = Team.find_or_create_by(name: team2["name"], api_team_id: team2["team_normalized_id"])
			else 
				home_team = Team.find_or_create_by(name: team2["name"], api_team_id: team2["team_normalized_id"])
				away_team = Team.find_or_create_by(name: team1["name"], api_team_id: team1["team_normalized_id"])
			end
			

			game = Game.find_or_create_by(ht_id: home_team.id, at_id: away_team.id, api_event_id: e["event_id"], week: "17", season: "2019")
		end
	end
end