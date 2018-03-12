def get_first_name_of_season_winner(data, season)
  data[season].find { |element| element.values.include?("Winner")}["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  data.keys.each do |season|
      data[season].each do |people|
        # people.find do |k,v|
        #   v = occupation
        #
        # end
         if people["occupation"] == occupation
            return people["name"]
         end
      end
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
