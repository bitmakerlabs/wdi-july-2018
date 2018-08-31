require 'httparty'

response = HTTParty.get("http://myttc.ca/finch_station.json")
# response.body is a string but we know it's formatted as JSON
data = JSON.parse(response.body)
# now we can comb through the 'data' hash
puts data.keys

#data["stops"].each do....