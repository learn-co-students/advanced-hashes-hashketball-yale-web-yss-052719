def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
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
        }
      }

    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
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
        }
    }
  }
}
end

def num_points_scored (player)
  points = 0
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
          if name == player
            stats.each do |stat, value|
              if stat == :points
                points = value
              end
            end
          end
        end
      end
    end
  end
  points
end

def shoe_size (player)
  size = 0
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
          if name == player
            stats.each do |stat, value|
              if stat == :shoe
                size = value
              end
            end
          end
        end
      end
    end
  end
  size
end

def team_colors (name)
  colors = []
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :team_name && data == name
        colors = game_hash[location][:colors]
      else
        colors
      end
    end
  end
  colors
end

def team_names
  teams = []
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :team_name
        teams << data
      end
    end
  end
  teams
end

def player_numbers (teamName)
  numbers = []
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :team_name && data == teamName
        game_hash[location][:players].each do |name, stats|
          stats.each do |stat, value|
            if stat == :number
              numbers << value
            end
          end
        end
      end
    end
  end
  numbers
end

def player_stats (player)
  pStats = {}
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
          if name == player
            pStats = stats
          end
        end
      end
    end
  end
  pStats
end

def big_shoe_rebounds
  maxShoe = 0
  bsrb = 0
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
            stats.each do |stat, value|
              if stat == :shoe && value > maxShoe
                bsrb = game_hash[location][:players][name][:rebounds]
              end
            end
        end
      end
    end
  end
  bsrb
end

def most_points_scored
  maxPoints = 0
  starPlayer = ""
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
            stats.each do |stat, value|
              if stat == :points && value > maxPoints
                maxPoints = value
                starPlayer = name
              end
            end
        end
      end
    end
  end
  starPlayer
end

def winning_team
  pointsA = 0
  pointsB = 0
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
            stats.each do |stat, value|
              if stat == :points && location == :home
                pointsA += value
              elsif stat == :points && location == :away
                pointsB += value
              end
            end
        end
      end
    end
  end
  if pointsA > pointsB
    game_hash[:home][:team_name]
  else
    game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  nameMax = 0
  player = ""
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
          if nameMax <= name.size
            nameMax = name.size
            player = name
          end
        end
      end
    end
  end
  player
end

def long_name_steals_a_ton?
  maxSteal = 0
  thief = ""
  game_hash.each do |location, teamData|
    teamData.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
            stats.each do |stat, value|
              if stat == :steals && value > maxSteal
                maxSteal = value
                thief = name
              end
            end
        end
      end
    end
  end
  if thief == player_with_longest_name
    true
  else
    false
  end
end
