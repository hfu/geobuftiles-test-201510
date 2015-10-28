require 'find'
def cmp(a, b)
  return "#{a}/#{b}=#{(100.0 * a / b).to_i}%"
end
Find.find('../geomsgpack-poc-1510/experimental_fgd') {|path|
  next unless path.end_with?('pbf')
  print path, cmp(File.size(path), File.size(path.sub('pbf', 'geojson'))), "\n"
}
