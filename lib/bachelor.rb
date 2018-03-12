def get_first_name_of_season_winner(data, season)
  data[season].find { |element| element.values.include?("Winner")}["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  data.keys.each do |season|
      data[season].each do |person|
         if person["occupation"] == occupation
            return person["name"]
         end
      end
    end

end

def count_contestants_by_hometown(data, hometown)
  count=0
  data.keys.each do |season|
      data[season].each do |person|
         if person["hometown"] == hometown
            count+= 1
         end
      end
    end
    count
end

def get_occupation(data, hometown)
  data.keys.each do |season|
      data[season].each do |person|
         if person["hometown"] == hometown
            return person["occupation"]
         end
      end
    end

  end

def get_average_age_for_season(data, season)
  total=0
  count=0
  data[season].each do |person|
    total+=person["age"].to_i
    count+=1
  end

  total/count.to_f.round
end
