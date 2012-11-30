require 'treetop/runtime/syntax_node'

module TreetopBootstrap
  class Node < Treetop::Runtime::SyntaxNode
    
    alias_method :elements_with_treetop, :elements
    def elements
      elements_with_treetop.find_all { |node| node.is_a?(TreetopBootstrap::Node) }
    end
    
  end
end
