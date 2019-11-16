class Tree
  attr :children, :node_name

  def initialize(tree_definition)
    node = tree_definition.first
    @node_name = node.first
    @children = node.last.map { |k, v| Tree.new(Hash[k,v]) }
  end

  def visit_all(&block)
    block.call self
    children.each { |child| child.visit_all &block }
  end
end



family = Tree.new ({'Viiveke' =>
                     { 'Bodil' => {},
                       'Pia' =>
                       { 'Elmer' => {},
                         'Hannes' => {},
                         'Viktor' => {}
                       }
                     }
                     })

family.visit_all { |node, depth| puts node.node_name }
                  
