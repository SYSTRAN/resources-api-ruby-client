module ResourcesApiClient
  # 
  class CorpusAddSegmentTarget < BaseObject
    attr_accessor :lang, :target
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Language
        :'lang' => :'lang',
        
        # Target text
        :'target' => :'target'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'lang' => :'string',
        :'target' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'lang']
        @lang = attributes[:'lang']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
    end
  end
end
