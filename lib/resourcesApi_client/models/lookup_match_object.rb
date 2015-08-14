module ResourcesApiClient
  # 
  class LookupMatchObject < BaseObject
    attr_accessor :auto_complete, :model_name, :source, :target, :other_expressions
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_complete' => :'auto_complete',
        
        # 
        :'model_name' => :'model_name',
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target',
        
        # 
        :'other_expressions' => :'other_expressions'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_complete' => :'boolean',
        :'model_name' => :'string',
        :'source' => :'LookupSourceObject',
        :'target' => :'LookupTargetObject',
        :'other_expressions' => :'array[LookupOtherExpression]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'auto_complete']
        @auto_complete = attributes[:'auto_complete']
      end
      
      if attributes[:'model_name']
        @model_name = attributes[:'model_name']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'other_expressions']
        if (value = attributes[:'other_expressions']).is_a?(Array)
          @other_expressions = value
        end
      end
      
    end
  end
end
