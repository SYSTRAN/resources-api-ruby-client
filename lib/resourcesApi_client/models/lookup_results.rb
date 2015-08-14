module ResourcesApiClient
  # 
  class LookupResults < BaseObject
    attr_accessor :output
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'output' => :'output'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'output' => :'LookupOutputObject'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'output']
        @output = attributes[:'output']
      end
      
    end
  end
end
