module ResourcesApiClient
  # 
  class CorpusSegment < BaseObject
    attr_accessor :id, :lang, :source, :targets
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Identifier
        :'id' => :'id',
        
        # Language
        :'lang' => :'lang',
        
        # Source text
        :'source' => :'source',
        
        # List of target texts
        :'targets' => :'targets'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'lang' => :'string',
        :'source' => :'string',
        :'targets' => :'array[CorpusSegmentTarget]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'lang']
        @lang = attributes[:'lang']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'targets']
        if (value = attributes[:'targets']).is_a?(Array)
          @targets = value
        end
      end
      
    end
  end
end
