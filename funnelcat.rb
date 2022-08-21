require 'csv'

encoding = 'UTF-8'
data = 'school_addresses.csv'

File.foreach(data, encoding: encoding) do |line|
  line = line.gsub(",", " ").delete('\-&"').strip.downcase.split
  p line
end
