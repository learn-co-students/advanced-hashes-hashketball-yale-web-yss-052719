require "pry"

def game_hash
  hash = {
    home:{
      team_name:"Brooklyn Nets",
      colors:["Black","White"],
      players:{
        "Alan Anderson":{
          number:0,
          shoe:16,
          points:22,
          rebounds:12,
          assists:12,
          steals:3,
          blocks:1,
          slam_dunks:1
        },
        "Reggie Evans":{
          number:30,
          shoe:14,
          points:12,
          rebounds:12,
          assists:12,
          steals:12,
          blocks:12,
          slam_dunks:7
        },
        "Brook Lopez":{
          number:11,
          shoe:17,
          points:17,
          rebounds:19,
          assists:10,
          steals:3,
          blocks:1,
          slam_dunks:15
        },
        "Mason Plumlee":{
          number:1,
          shoe:19,
          points:26,
          rebounds:12,
          assists:6,
          steals:3,
          blocks:8,
          slam_dunks:5
        },
        "Jason Terry":{
          number:31,
          shoe:15,
          points:19,
          rebounds:2,
          assists:2,
          steals:4,
          blocks:11,
          slam_dunks:1
        }
      }
    },
    away:{
      team_name:"Charlotte Hornets",
      colors:["Turquoise","Purple"],
      players:{
        "Jeff Adrien":{
          number:4,
          shoe:18,
          points:10,
          rebounds:1,
          assists:1,
          steals:2,
          blocks:7,
          slam_dunks:2
        },
        "Bismak Biyombo":{
          number:0,
          shoe:16,
          points:12,
          rebounds:4,
          assists:7,
          steals:7,
          blocks:15,
          slam_dunks:10
        },
        "DeSagna Diop":{
          number:2,
          shoe:14,
          points:24,
          rebounds:12,
          assists:12,
          steals:4,
          blocks:5,
          slam_dunks:5
        },
        "Ben Gordon":{
          number:8,
          shoe:15,
          points:33,
          rebounds:3,
          assists:2,
          steals:1,
          blocks:1,
          slam_dunks:0
        },
        "Brendan Haywood":{
          number:33,
          shoe:15,
          points:6,
          rebounds:12,
          assists:12,
          steals:22,
          blocks:5,
          slam_dunks:12
        }
      }
    }
  }
end



def num_points_scored(name)
  game_hash.collect do |location, team_data|
    #binding.pry
      team_data.collect do |data, player|
        #binding.pry
        if data == :players
          player.collect do |player_name, stat_category|
            #binding.pry
            if player_name.to_s == name
              stat_category.collect do |category, quantity|
                #binding.pry
                if category == :points
                  return quantity
                end
              end
            end
          end
        end
      end
  end
end

def shoe_size(name)
  game_hash.collect do |location, team_data|
    #binding.pry
      team_data.collect do |data, player|
        #binding.pry
        if data == :players
          player.collect do |player_name, stat_category|
            #binding.pry
            if player_name.to_s == name
              stat_category.collect do |category, quantity|
                #binding.pry
                if category == :shoe
                  return quantity
                end
              end
            end
          end
        end
      end
  end
end

def team_colors(team_name)
  a = 0
  game_hash.collect do |location, team_data|
    #binding.pry
    team_data.collect do |data, player|
      #binding.pry
      if data == :team_name && player.to_s == team_name
        a += 1
      end
      if a == 1 && data == :colors
        return player
      end
    end
  end
end

def team_names
  team_array = []
  game_hash.collect do |location, team_data|
    #binding.pry
    team_data.collect do |data, team|
      #binding.pry
      if data == :team_name
        team_array << team
      end
    end
  end
  team_array.flatten
end

def player_numbers(name_of_team)
  jersey_array = []
  game_hash.collect do |location, team_data|
    a = 0
    #binding.pry
      team_data.collect do |data, name|
        #binding.pry
        if data == :team_name && name == name_of_team
          a += 1
        end
        if data == :players && a == 1
          name.collect do |player_name, stat_category|
            #binding.pry
              stat_category.collect do |category, quantity|
                #binding.pry
                if category == :number
                  jersey_array << quantity
                end
              end
            end
          end
        end
      end
  jersey_array
end

def player_stats(name)
  hash = {}
  game_hash.collect do |location, team_data|
    #binding.pry
      team_data.collect do |data, player|
        #binding.pry
        if data == :players
          player.collect do |player_name, stat_category|
            #binding.pry
            if player_name.to_s == name
              hash = stat_category
            end
          end
        end
      end
  end
  hash
end

def big_shoe_rebounds
  biggest_shoe = 0
  most_rebounds = 0
  game_hash.collect do |location, team_data|
    #binding.pry
      team_data.collect do |data, player|
        #binding.pry
        if data == :players
          player.collect do |player_name, stat_category|
            #binding.pry
              stat_category.collect do |category, quantity|
                #binding.pry
                if category == :shoe
                  if quantity > biggest_shoe
                    biggest_shoe = quantity
                  end
                end
              end
            end
          end
        end
  end
  a = 0
  game_hash.collect do |location, team_data|
    #binding.pry
      team_data.collect do |data, player|
        #binding.pry
        if data == :players
          player.collect do |player_name, stat_category|
            #binding.pry
              stat_category.collect do |category, quantity|
                #binding.pry
                if category == :shoe && quantity == biggest_shoe
                  a += 1
                end
                if category == :rebounds && a == 1
                    most_rebounds = quantity
                end
              end
            end
          end
        end
  end
  most_rebounds
end
  
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end

#good_practices







