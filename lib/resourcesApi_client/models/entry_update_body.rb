module ResourcesApiClient
  # 
  class EntryUpdateBody < BaseObject
    attr_accessor :source_id, :target_id, :update
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source_id' => :'sourceId',
        
        # 
        :'target_id' => :'targetId',
        
        # 
        :'update' => :'update'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source_id' => :'string',
        :'target_id' => :'string',
        :'update' => :'EntryUpdateInput'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'sourceId']
        @source_id = attributes[:'sourceId']
      end
      
      if attributes[:'targetId']
        @target_id = attributes[:'targetId']
      end
      
      if attributes[:'update']
        @update = attributes[:'update']
      end
      
    end
  end
end
