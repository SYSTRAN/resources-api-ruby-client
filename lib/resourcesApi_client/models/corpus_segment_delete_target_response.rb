module ResourcesApiClient
  # 
  class CorpusSegmentDeleteTargetResponse < BaseObject
    attr_accessor :deleted
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Segment target deleted
        :'deleted' => :'deleted'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'deleted' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'deleted']
        @deleted = attributes[:'deleted']
      end
      
    end
  end
end
