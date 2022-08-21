require 'csv'
require 'tree'

encoding = 'UTF-8'
data = 'data/school_addresses.csv'

root_node = Tree::TreeNode.new("ROOT", "FunnelCat")

File.foreach(data, encoding: encoding) do |line|
  funnel = line.gsub(",", " ").delete('\-&"').strip.downcase.split

  current_node = root_node

  while funnel.any?
    location = funnel.pop

    if current_node[location].nil?
      current_node << Tree::TreeNode.new(location, "Content")
    end

    current_node = current_node[location]
  end
end

root_node.print_tree
