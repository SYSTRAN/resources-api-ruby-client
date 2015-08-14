module ResourcesApiClient
  # 
  class EntryAddBody < BaseObject
    attr_accessor :entry
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'entry' => :'entry'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'entry' => :'EntryAddInput'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'entry']
        @entry = attributes[:'entry']
      end
      
    end
  end
end
