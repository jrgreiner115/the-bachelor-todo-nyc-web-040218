def get_first_name_of_season_winner(data, season)
  
  data.each do |season_1, season_data|
    if season_1 == season
    season_data.each do |v|
      if v["status"] == "Winner"
        return v["name"].split(" ")[0]
      end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["occupation"] == occupation
        return v["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["hometown"] == hometown
        return v["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
 new_array = []
  data.each do |season_1, season_data|
    if season_1 == season
    season_data.each do |v|
      new_array << v["age"].inject(:+).to_f
      end
    end
    end
  end
  sum / new_array.length
end
