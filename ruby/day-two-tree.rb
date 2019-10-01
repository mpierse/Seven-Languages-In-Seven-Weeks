# day-two-tree-rb

class Tree

	attr_accessor :children, :node_name
	
	def initialize(hash)
		@node_name = hash.keys.first
		@children = []
		hash[@node_name].each { |n,c| @children << Tree.new(n => c)}
	end
	
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
	
	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new(:Grandpa =>
	{:Papa => {:Son => {}, :Daughter => {}}, :Uncle => {:Niece => {}, :Nephew => {}}}
)

puts "visiting all nodes"
ruby_tree.visit_all {|p| puts p.node_name}