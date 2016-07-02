#for testing
require "net/http"
require "json"
require "uri"
require "rubygems"

arrayOfLatLong = []
arrayOfAddresses = []

contents = '{"northeast" : {
                   "lat" : 22.2837934,
                   "lng" : 114.1909365
                }}'
parsedContent = JSON.parse(contents)
p parsedContent['northeast']['lat']


#store addresses into an array
# parsedContent['Venues'].each do |x|
#     arrayOfAddresses << x['Address_en']
# end
# #prep for http request
# arrayOfAddresses.map! do |x|
#     x.gsub(/\s+/, "+")
# end

# #Loop to test which address returns nil
# arrayOfAddresses.each do |x|
#     #sending http request and gettin stuff
#     prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{x}&key=AIzaSyA6ZCheu9Iimb09xlQs3xjejUrX825fXVQ"
#     uri = URI(prepURI)
#     gMapsResponse = Net::HTTP.get(uri)
#     parsedgMapsResponse = JSON.parse(gMapsResponse)
#     p parsedgMapsResponse['status']
#     if parsedgMapsResponse['status'] == "ZERO_RESULTS" || parsedgMapsResponse['status'] == "INVALID_REQUEST"
#         p x
#     end
# end



# {
#    "results" : [
#       {
#          "address_components" : [
#             {
#                "long_name" : "Victoria Park Swimming Pool",
#                "short_name" : "Victoria Park Swimming Pool",
#                "types" : [ "premise" ]
#             },
#             {
#                "long_name" : "1",
#                "short_name" : "1",
#                "types" : [ "street_number" ]
#             },
#             {
#                "long_name" : "Hing Fat Street",
#                "short_name" : "Hing Fat St",
#                "types" : [ "route" ]
#             },
#             {
#                "long_name" : "Causeway Bay",
#                "short_name" : "Causeway Bay",
#                "types" : [ "neighborhood", "political" ]
#             },
#             {
#                "long_name" : "Hong Kong",
#                "short_name" : "Hong Kong",
#                "types" : [ "locality", "political" ]
#             },
#             {
#                "long_name" : "Wan Chai District",
#                "short_name" : "Wan Chai District",
#                "types" : [ "administrative_area_level_2", "political" ]
#             },
#             {
#                "long_name" : "Hong Kong Island",
#                "short_name" : "Hong Kong Island",
#                "types" : [ "administrative_area_level_1", "political" ]
#             },
#             {
#                "long_name" : "Hong Kong",
#                "short_name" : "HK",
#                "types" : [ "country", "political" ]
#             }
#          ],
#          "formatted_address" : "Victoria Park Swimming Pool, 1 Hing Fat St, Causeway Bay, Hong Kong",
#          "geometry" : {
#             "bounds" : {
#                "northeast" : {
#                   "lat" : 22.2837934,
#                   "lng" : 114.1909365
#                },
#                "southwest" : {
#                   "lat" : 22.2826187,
#                   "lng" : 114.190004
#                }
#             },
#             "location" : {
#                "lat" : 22.2832061,
#                "lng" : 114.1904703
#             },
#             "location_type" : "ROOFTOP",
#             "viewport" : {
#                "northeast" : {
#                   "lat" : 22.2845550302915,
#                   "lng" : 114.1918192302915
#                },
#                "southwest" : {
#                   "lat" : 22.2818570697085,
#                   "lng" : 114.1891212697085
#                }
#             }
#          },
#          "place_id" : "ChIJYQ5fWFUABDQRG08r-xbTVoY",
#          "types" : [ "premise" ]
#       }
#    ],
#    "status" : "OK"
# }


# arrayOfLatLong = []
# arrayOfAddresses = []

# file = File.open("./moveHK.json", "r")
# contents = file.read
# parsedContent = JSON.parse(contents)
# #store addresses into an array
# parsedContent['Venues'].each do |x| 
#     arrayOfAddresses << x['Address_en']
# end
# #prep for http request
# arrayOfAddresses.map! do |x| 
#     x.gsub(/\s+/, "+")
# end
# #sending the actual request
# arrayOfAddresses.each do |x|
#     #sending http request and gettin stuff
#     prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{x}&key=AIzaSyA6ZCheu9Iimb09xlQs3xjejUrX825fXVQ"
#     p prepURI
#     uri = URI(prepURI)
#     gMapsResponse = Net::HTTP.get_print(uri)
#         if gMapsResponse != nil
#             parsedgMapsResponse = JSON.parse(gMapsResponse)
#             #parsing lat and long data
#             parsedgMapsResponse['results']['geometry']['bounds']['northeast'].each do |y|

#             end
#         end
#     end
# end

# puts arrayOfLatLong
# parsedContent[]
