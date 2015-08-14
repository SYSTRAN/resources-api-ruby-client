module ResourcesApiClient
  # 
  class CorpusSegmentAddResponse < BaseObject
    attr_accessor :segments
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of added segments ids
        :'segments' => :'segments'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'segments' => :'array[string]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'segments']
        if (value = attributes[:'segments']).is_a?(Array)
          @segments = value
        end
      end
      
    end
  end
end
