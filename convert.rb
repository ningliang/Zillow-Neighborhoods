Dir["data/*"].each do |dir|
  name = dir.split("/").last
  state = name.split("-").last.downcase
  cmd = "ogr2ogr -f \"GeoJSON\" json/#{state}.json #{dir}/#{name}.shp #{name}"
  system(cmd)
end
