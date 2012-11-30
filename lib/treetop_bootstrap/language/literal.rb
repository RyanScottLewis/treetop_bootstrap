require 'treetop_bootstrap/node'

module TreetopBootstrap
  module Language
    
    class Literal < Node
      def value
        elements_with_treetop[1].text_value # Skip the first node
      end
    end
    
  end
end
