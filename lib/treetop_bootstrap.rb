require 'pathname'
require 'forwardable'

__LIB__ ||= Pathname.new(__FILE__).join('..').expand_path
$:.unshift(__LIB__.to_s) unless $:.include?(__LIB__)

require 'treetop_bootstrap/parser'

module TreetopBootstrap
  class << self
    extend Forwardable
    
    delegate :parse => Parser
    
  end
end
