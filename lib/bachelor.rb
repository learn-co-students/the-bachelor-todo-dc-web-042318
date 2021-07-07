require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"]
    end
  end
  winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here

  name = ""
  data.each do |season, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  count = ""
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        count = contestant["occupation"]
        return count
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  average = 0
  data[season].each do |contestant|
    ages << contestant["age"].to_f
  end
  ages.each {|age| average += age} 
  average = (average / data[season].length).round
end
