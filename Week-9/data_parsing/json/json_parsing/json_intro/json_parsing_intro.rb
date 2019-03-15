require 'json'

json = File.read('json_example.json')

puts json.class

json_parse = JSON.parse(File.read('json_example.json'))

json_parse["colors"].each do |color|
  puts color["color"]
end

# puts json[:colors]
