require 'uri'
require 'net/http'

url = URI("https://muscle-group-image-generator.p.rapidapi.com/getImage?muscleGroups=biceps%2Cchest%2Chamstring&color=200%2C100%2C80&transparentBackground=0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = 'S8aXXv4dWDmshRYu8CYfH8IkvSzWp1tSU2vjsnTjrr5KxUIZsx'
request["X-RapidAPI-Host"] = 'muscle-group-image-generator.p.rapidapi.com'

response = http.request(request)
puts response.read_body
