require 'treetop_bootstrap/node'

module TreetopBootstrap
  module Language
    
    class HelloKeyword < Node
      def run
        node      = elements[0]
        value     = node.value
        value_cls = value.class
        node_cls  = node.class.to_s.split('::').last
        
        puts "Hello #{value}! <#{value_cls} - #{node_cls}>"
      end
    end
    
  end
end
