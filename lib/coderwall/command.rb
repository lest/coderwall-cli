require 'rubygems'
require 'open-uri'
require 'json'

username = ARGV.first

unless username
  puts "Usage: coderwall USERNAME"
  exit 1
end

url = URI.escape("http://coderwall.com/#{username}.json")
begin
  response = JSON.load(open(url))
  puts "Achievements:"
  response['badges'].each do |badge|
    puts "- #{badge['name']}: #{badge['description']}"
  end
rescue OpenURI::HTTPError
  puts "Invalid username"
  exit 1
end
