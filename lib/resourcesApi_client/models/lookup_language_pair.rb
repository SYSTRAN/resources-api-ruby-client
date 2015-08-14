module ResourcesApiClient
  # 
  class LookupLanguagePair < BaseObject
    attr_accessor :source, :target
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Source language
        :'source' => :'source',
        
        # Target language
        :'target' => :'target'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'target' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
    end
  end
end
