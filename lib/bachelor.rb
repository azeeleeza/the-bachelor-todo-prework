def get_first_name_of_season_winner(data, season)
  data[season].find { |element| element.values.include?("Winner")}["name"].split(" ").first
end

def get_contestant_name(data, occupation)
    found = data.keys.find do |season|
      data[season].find do |person|
        data[season][person]["occupation"] == occupation

      end
    end

    puts found
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
