require 'treetop_bootstrap/node'

module TreetopBootstrap
  module Language
    
    class Body < Node
      def run
        elements.each(&:run)
      end
    end
    
    class Literal < Node
      def value
        elements_with_treetop[1].text_value # Skip the first node
      end
    end
    
    class StringLiteral < Literal; end
    
    class IntegerLiteral < Literal
      def value
        super.to_i
      end
    end
    
    class FloatLiteral < Literal
      def value
        super.to_f
      end
    end
    
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
