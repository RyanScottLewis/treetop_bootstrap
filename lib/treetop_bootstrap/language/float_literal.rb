require 'treetop_bootstrap/language/literal'

module TreetopBootstrap
  module Language
    
    class FloatLiteral < Literal
      def value
        super.to_f
      end
    end
    
  end
end
