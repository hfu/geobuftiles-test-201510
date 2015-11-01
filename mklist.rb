require 'json'
require 'find'

result = []
count = 0
Find.find('../geomsgpack-poc-1510/experimental_fgd') {|path|
  next unless path.end_with?('msg')
  zxy = path.sub('.msg', '').split('/')[-3..-1].map{|v| v.to_i}
  result << zxy
  count += 1
  # break if count == 1000
  p zxy
}
File.open('list.json', 'w') {|w| w.print JSON::dump(result)}
