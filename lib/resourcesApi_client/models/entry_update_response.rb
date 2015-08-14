module ResourcesApiClient
  # 
  class EntryUpdateResponse < BaseObject
    attr_accessor :source_id, :target_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source_id' => :'sourceId',
        
        # 
        :'target_id' => :'targetId'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source_id' => :'string',
        :'target_id' => :'string'
        
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
      
    end
  end
end
