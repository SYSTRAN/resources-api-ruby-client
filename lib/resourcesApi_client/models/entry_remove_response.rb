module ResourcesApiClient
  # 
  class EntryRemoveResponse < BaseObject
    attr_accessor :status
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'status' => :'status'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'status' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
    end
  end
end
