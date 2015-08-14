module ResourcesApiClient
  # 
  class EntryAddOutput < BaseObject
    attr_accessor :confidence, :source_id, :target_id, :pos, :target_pos, :source, :target, :type, :status
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'confidence' => :'confidence',
        
        # 
        :'source_id' => :'sourceId',
        
        # 
        :'target_id' => :'targetId',
        
        # 
        :'pos' => :'pos',
        
        # 
        :'target_pos' => :'targetPos',
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target',
        
        # 
        :'type' => :'type',
        
        # 
        :'status' => :'status'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'confidence' => :'string',
        :'source_id' => :'string',
        :'target_id' => :'string',
        :'pos' => :'string',
        :'target_pos' => :'string',
        :'source' => :'string',
        :'target' => :'string',
        :'type' => :'string',
        :'status' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'confidence']
        @confidence = attributes[:'confidence']
      end
      
      if attributes[:'sourceId']
        @source_id = attributes[:'sourceId']
      end
      
      if attributes[:'targetId']
        @target_id = attributes[:'targetId']
      end
      
      if attributes[:'pos']
        @pos = attributes[:'pos']
      end
      
      if attributes[:'targetPos']
        @target_pos = attributes[:'targetPos']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
    end
  end
end
