module ResourcesApiClient
  # 
  class LookupResponse < BaseObject
    attr_accessor :warning, :error, :outputs
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Warning at request level
        :'warning' => :'warning',
        
        # Error at request level
        :'error' => :'error',
        
        # Array of lookup result
        :'outputs' => :'outputs'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'warning' => :'string',
        :'error' => :'string',
        :'outputs' => :'array[LookupResults]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'warning']
        @warning = attributes[:'warning']
      end
      
      if attributes[:'error']
        @error = attributes[:'error']
      end
      
      if attributes[:'outputs']
        if (value = attributes[:'outputs']).is_a?(Array)
          @outputs = value
        end
      end
      
    end
  end
end
