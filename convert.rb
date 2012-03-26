# ogr2ogr -f "GeoJSON" ../../json/al.json ZillowNeighborhoods-AL.shp ZillowNeighborhoods-AL

Dir["data/*"].each do |dir|
  name = dir.split("/").last
  state = name.split("-").last.downcase
  cmd = "ogr2ogr -f \"GeoJSON\" json/#{state}.json #{dir}/#{name}.shp #{name}"
  system(cmd)
end
