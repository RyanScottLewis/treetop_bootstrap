require 'treetop_bootstrap/error'
require 'treetop_bootstrap/language_parser'

module TreetopBootstrap
  module Parser
    class Error < TreetopBootstrap::Error
      
      extend Forwardable
      
      def_delegator :@language_parser, :failure_reason, :reason
      def_delegator :@language_parser, :failure_line,   :line
      def_delegator :@language_parser, :failure_column, :column
      
      # @param [TreetopBootstrap::LanguageParser] language_parser
      def initialize(language_parser)
        raise TypeError unless language_parser.instance_of?(TreetopBootstrap::LanguageParser)
        
        @language_parser = language_parser
      end
      
      # @return [String]
      def to_s
        reason || "Invalid - column #{column}, line #{line}"
      end
      
    end
  end
end