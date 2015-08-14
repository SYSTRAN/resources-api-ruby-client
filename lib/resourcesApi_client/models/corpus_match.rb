module ResourcesApiClient
  # 
  class CorpusMatch < BaseObject
    attr_accessor :source, :target, :score, :penalty, :align
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target',
        
        # 
        :'score' => :'score',
        
        # 
        :'penalty' => :'penalty',
        
        # 
        :'align' => :'align'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'target' => :'string',
        :'score' => :'double',
        :'penalty' => :'double',
        :'align' => :'string'
        
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
      
      if attributes[:'score']
        @score = attributes[:'score']
      end
      
      if attributes[:'penalty']
        @penalty = attributes[:'penalty']
      end
      
      if attributes[:'align']
        @align = attributes[:'align']
      end
      
    end
  end
end
