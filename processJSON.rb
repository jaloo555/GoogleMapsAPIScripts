require "net/http"
require "uri"
require "rubygems"
require "json"
require "pry"

file = File.open("./moveHK.json", "r")
contents = file.read
parsedContent = JSON.parse(contents)
parsedContent['Venues'].each do |x|
	address = x['Address_en']
	processed_address = address.gsub(/\s+/, "+")
	prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{processed_address}&key=AIzaSyDdoYmCePZY70kvewcddhWWDkJiy9wRmmY"
	uri = URI(prepURI)
	gMapsResponse = Net::HTTP.get(uri)
	parsedGMapsResponse = JSON.parse(gMapsResponse)
	x["lat"] = parsedGMapsResponse['results'][0]['geometry']['location']['lat'].to_s
	x["lng"] = parsedGMapsResponse['results'][0]['geometry']['location']['lng'].to_s
end

p parsedContent.to_json
#File.write('./file.json', parsedContent.to_json)

#https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA6ZCheu9Iimb09xlQs3xjejUrX825fXVQ
#!/usr/bin/env ruby -wKU