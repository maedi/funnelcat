require 'csv'
require 'tree'

encoding = 'UTF-8'
data = 'school_addresses.csv'

root_node = Tree::TreeNode.new("ROOT", "FunnelCat")
root_node.print_tree

File.foreach(data, encoding: encoding) do |line|
  line = line.gsub(",", " ").delete('\-&"').strip.downcase.split
  # p line
end
