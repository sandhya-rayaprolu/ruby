require 'yahoo_weatherman'

puts "Enter your location/Zipcode"

location = gets

client = Weatherman::Client.new

weather = client.lookup_by_location(location)

today = Time.now.strftime('%u')

for forecast in weather.forecasts
	day_of_week = forecast['date'].strftime('%u')
	if(day_of_week == today)
		day = "Today"
	elsif(day_of_week.to_i == today.to_i+1)
		day = "Tomorrow"
	else
		day = forecast['day']
	end
	puts "#{day} is going to be #{forecast['text']} with a high of #{forecast['high']} and a low of #{forecast['low']} celsius"
end