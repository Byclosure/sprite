module Sprite  
  
  # provides the root directory to use when reading and writing files
  def self.root
    @root ||= nil

    # set the root to the framework setting (if not already set)
    @root ||= begin
      if defined?(Rails)
        Rails.root
      elsif defined?(Merb)
        Merb.root
      else
        "."
      end
    end
    @root
  end  
  
  def self.identify_cmd
    "identify"
  end
  
end

require 'sprite/builder'
require 'sprite/image_combiner'
require 'sprite/styles'
