require 'polyglot'
require 'treetop'
require 'treetop_bootstrap/parser/error'
require 'treetop_bootstrap/language'
require 'treetop_bootstrap/language_parser'

module TreetopBootstrap
  module Parser
    class << self
      
      # Set the `tree` attribute.
      # This contains the last parsed result.
      attr_reader :tree
      
      # Get a new or the cached instance of this class.
      # 
      # @return [TreetopBootstrap::LanguageParser]
      def instance
        @instance ||= LanguageParser.new
      end
      
      # Set the `tree` attribute.
      # 
      # @return [TreetopBootstrap::Language::Body]
      def parse(data)
        @tree = instance.parse(data)
        raise Error, instance unless @tree
        
        @tree
      end
      
    end
    
  end
end
