require 'nokogiri'
require 'net/http'

http = NET::HTTP.new('example.com/', 443)

http.use_ssl = true

response = http.get("/")

resp = Nokogiri::HTML(response.body)

resp_final = resp.at('p')
puts resp_final.content
