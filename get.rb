require 'open-uri'
require 'net/http'
require 'json'
require 'awesome_print'

url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json"
url2 = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
uri = URI.parse(url)
uri2 = URI.parse(url2)
response = Net::HTTP.get_response(uri)
response2 = Net::HTTP.get_response(uri2)

ap JSON.parse(response.body)
ap JSON.parse(response2.body)