def get_first_name_of_season_winner(data, season)
  data[season].find { |element| element.values.include?("Winner")}["name"].split(" ").first
end

def get_contestant_name(data, occupation)
    data.keys.find do |season|
      who = data[season].find do |keys, values|
        values.include?(occupation)}
      end
      puts who
    end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
