require 'find'
def cmp(a, b)
  return "#{a}/#{b}=#{(100.0 * a / b).to_i}%"
end
sum_json = 0
sum_pbf = 0
Find.find('../geomsgpack-poc-1510/experimental_fgd') {|path|
  next unless path.end_with?('geojson')
  system "json2geobuf #{path} > #{path.sub('geojson', 'pbf')}"
  js = File.size(path);
  ps = File.size(path.sub('geojson', 'pbf'))
  sum_json += js
  sum_pbf += ps
  print "#{cmp(ps, js)} #{cmp(sum_pbf, sum_json)}\n"
}

