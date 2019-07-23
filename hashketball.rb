require "pry"

def game_hash
game_hash = Hash.new
game_hash = {home:
              {team_name: "Brooklyn Nets",
              colors: ["Black","White"],
              players:
              {"Alan Anderson" => {
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1
              },
              "Reggie Evans" => {
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7
              },
              "Brook Lopez" => {
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15
              },
              "Mason Plumlee" => {
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 12,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5
              },
              "Jason Terry" => {
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1
              },
            } #closes players for home team
},#closes home team
            away: {team_name: "Charlotte Hornets",
            colors: ["Turquoise","Purple"],
            players:
            {"Jeff Adrien" => {
              number: 4,
              shoe: 18,
              points: 10,
              rebounds: 1,
              assists: 1,
              steals: 2,
              blocks: 7,
              slam_dunks: 2
            },
            "Bismack Biyombo" => {
              number: 0,
              shoe: 16,
              points: 12,
              rebounds: 4,
              assists: 7,
              steals: 7,
              blocks: 15,
              slam_dunks: 10
            },
            "DeSagna Diop" => {
              number: 2,
              shoe: 14,
              points: 24,
              rebounds: 12,
              assists: 12,
              steals: 4,
              blocks: 5,
              slam_dunks: 5
            },
            "Ben Gordon" => {
              number: 8,
              shoe: 15,
              points: 33,
              rebounds: 3,
              assists: 2,
              steals: 1,
              blocks: 1,
              slam_dunks: 0
            },
            "Brendan Haywood" => {
              number: 33,
              shoe: 15,
              points: 6,
              rebounds: 12,
              assists: 12,
              steals: 22,
              blocks: 5,
              slam_dunks: 12
            },
          } #closes players for away team
}#closes away team
}#closes game hash
game_hash
end

def num_points_scored (player_name)
if game_hash[:home][:players].include?(player_name)
  game_hash[:home][:players].collect do |name, stats|
    if name == player_name
      stats.each do |attribute, value|
        if attribute.to_s == "points"
          return value
        end
      end
    end
  end
else
  game_hash[:away][:players].collect do |name, stats|
    if name == player_name
      stats.each do |attribute, value|
        if attribute.to_s == "points"
          return value
        end
      end
    end
  end
  end
end

def shoe_size (player_name)
  if game_hash[:home][:players].include?(player_name)
    game_hash[:home][:players].collect do |name, stats|
      if name == player_name
        stats.each do |attribute, value|
          if attribute.to_s == "shoe"
            return value
          end
        end
      end
    end
  else
    game_hash[:away][:players].collect do |name, stats|
      if name == player_name
        stats.each do |attribute, value|
          if attribute.to_s == "shoe"
            return value
          end
        end
      end
    end
    end
  end

  def team_colors (team_name)
    game_hash.each do |side,team|
      team.each do |team_id,value|
        if value == team_name
          return game_hash[side][:colors]
        end
      end
    end
  end

def team_names
  team_array = Array.new
  game_hash.each do |side,team|
    team.each do |attribute, value|
      if attribute.to_s == "team_name"
        team_array << value
      end
    end
  end
  team_array
end

def player_numbers (tm_name)
  return_array = Array.new
  game_hash.each do |side,team|
    team.each do |team_id,value|
      if value == tm_name
        team[:players].each do |name,stats|
          stats.each do |type, int|
            if type.to_s == "number"
          return_array << int
        end
      end
    end
  end
end
end
return_array
end

def player_stats(player_name)
  if game_hash[:home][:players].include?(player_name)
    return game_hash[:home][:players][player_name]
  else
      return game_hash[:away][:players][player_name]
    end
end

def shoe_numbers (tm_name)
  return_array = Array.new
  game_hash.each do |side,team|
    team.each do |team_id,value|
      if value == tm_name
        team[:players].each do |name,stats|
          stats.each do |type, int|
            if type.to_s == "shoe"
          return_array << int
        end
      end
    end
  end
end
end
return_array
end

def big_shoe_rebounds
big_shoe_player = Hash.new
big_shoe_value = 0
game_hash[:home][:players].each do |name, stats|
  if stats[:shoe] > big_shoe_value
    big_shoe_player = {name=>stats}
    big_shoe_value = stats[:shoe]
  end
end
game_hash[:away][:players].each do |name,stats|
  if stats[:shoe] > big_shoe_value
    big_shoe_player = {name=>stats}
    big_shoe_value = stats[:shoe]
  end
end
big_shoe_name = big_shoe_player.to_s
stats = big_shoe_player.values
binding.pry
value = stats[0][:rebounds]
return value
end
