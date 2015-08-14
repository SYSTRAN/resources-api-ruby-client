module ResourcesApiClient
  # 
  class LookupOtherExpression < BaseObject
    attr_accessor :context, :source, :target
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'context' => :'context',
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'context' => :'string',
        :'source' => :'string',
        :'target' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'context']
        @context = attributes[:'context']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
    end
  end
end
