require 'pry'

  # This is the hash being passed in by the tests:
  # holiday_hash =
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

# We created this method as an abstraction of add_supply_to_winter_holidays

def add_supply_to_a_holiday(holiday_hash, supply, holiday)
  holiday_hash[holiday].each do |holiday, decorations|
    decorations << supply
  end
end

# We altered this method to accept a default holiday argument of :winter

def add_supply_to_winter_holidays(holiday_hash, supply, holiday = :winter)

  holiday_hash[holiday].each do |holiday, decorations|
    decorations << supply
  end

  # holiday_hash.each do |season, new_hash|
  #   if season == :winter
  #     new_hash.each do |holiday, data|
  #       data << supply
  #     end
  #   end
  # end

end

def add_supply_to_memorial_day(holiday_hash, supply)

  # holiday_hash.each do |season, new_hash|
  #   if season == :spring
  #     new_hash[:memorial_day].push(supply)
  #   end
  # end

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)

  # holiday_hash[:winter].map do |holiday, supplies|
  #   supplies
  # end.flatten

  holiday_hash[:winter].flatten(2)

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each {|season, celebration|
    puts season.to_s.capitalize + ":"
    celebration.each {|holiday, supply|
      line = "  "
      line << holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")
      line << ": "
      line << supply.each{|favor|favor}.join(", ")
      puts line
    }
  }

  # holiday_supplies.each do |season, holidays|
  #   puts "#{season.capitalize}:"
  #   holidays.each do |holiday, supplies|
  #     puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
  #   end
  # end

end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end