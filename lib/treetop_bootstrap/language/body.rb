require 'treetop_bootstrap/node'

module TreetopBootstrap
  module Language
    
    class Body < Node
      def run
        elements.each(&:run)
      end
    end
    
  end
end
