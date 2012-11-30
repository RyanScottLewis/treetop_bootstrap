require 'treetop_bootstrap/language/literal'

module TreetopBootstrap
  module Language
    
    class IntegerLiteral < Literal
      def value
        super.to_i
      end
    end
    
  end
end
