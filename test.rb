#for testing
require "net/http"
require "json"
require "uri"
require "rubygems"

arrayOfLatLong = []
arrayOfAddresses = []

file = File.open("./moveHK.json", "r")
contents = file.read
parsedContent = JSON.parse(contents)
#store addresses into an array
parsedContent['Venues'].each do |x| 
	arrayOfAddresses << x['Address_en']
end
#prep for http request
arrayOfAddresses.map! do |x| 
	x.gsub(/\s+/, "+")
end
#Loop to test which address returns nil
arrayOfAddresses.each do |x|
#sending http request and gettin stuff
prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{x}&key=AIzaSyA6ZCheu9Iimb09xlQs3xjejUrX825fXVQ"
uri = URI(prepURI)
gMapsResponse = Net::HTTP.get(uri)
parsedgMapsResponse = JSON.parse(gMapsResponse)
p parsedgMapsResponse['status']
	if parsedgMapsResponse['status'] == "ZERO_RESULTS" || parsedgMapsResponse['status'] = "INVALID_REQUEST"
		p x
	end
end