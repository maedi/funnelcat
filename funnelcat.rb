require 'csv'

encoding = 'UTF-8'
data = 'dv331_schoollocations2022.csv'

File.foreach(data, encoding: encoding) do |line|
  p line
end
