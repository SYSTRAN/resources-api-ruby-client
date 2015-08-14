module ResourcesApiClient
  # 
  class CorpusExistsResponse < BaseObject
    attr_accessor :exists
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # True if the corpus exists
        :'exists' => :'exists'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'exists' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'exists']
        @exists = attributes[:'exists']
      end
      
    end
  end
end
