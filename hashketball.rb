require "pry"
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      },
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

playersName = String.new
def num_points_scored(playersName)
  game_hash.each do |key, key2|
    if key2 == playersName
      key2.each do |player, playerStats|
        if player == playersName
          return game_hash[:key][:key2][:Points]
        end
      end
    end
  end
end

def shoe_size(playersName)
  game_hash.each do |key, key2|
    if key2 == playersName 
      key2.each do |player, playerStats|
        if player == playersName
          return game_hash[:key][:key2][:Shoe]
        end
      end
    end
  end
end

teamName = String.new
def team_colors(teamName)
  game_hash.each do |key, value|
    if value == teamName
      return [:key][:colors]
    end
  end
end

def team_names
  teamNames = Array.new
  game_hash.each do |key, value|
    if value == :team_name
    teamNames << game_hash[:key][:value]
    end
  end
end

def player_numbers(teamName)
  playerRoster = array.new
  game_hash.each do |key, value|
    if key[:team_name] == name
      key[:players].each do |key2, value2|
        array << player_hash[:number]
      end
    end
  end
  playerRoster
end

def player_stats(name)
  game_hash.each do |key, value|
    value[:players].each do |key2, value2|
      if key2 == name
        return value2
      end
    end
  end
end

