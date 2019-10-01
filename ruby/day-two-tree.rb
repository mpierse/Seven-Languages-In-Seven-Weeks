# day-two-tree-rb

class Tree
	attr_accessor :children, :node_name
	def initialize(name, children= [])
		@children = children
		@node_name = name
	end
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new("Grandpa",
	[Tree.new("Papa", [Tree.new("Son"), Tree.new("daughter")]), Tree.new("Uncle", [Tree.new("Niece"), Tree.new("Nephew")])]
)

puts "visiting all nodes"
ruby_tree.visit_all {|p| puts p.node_name}