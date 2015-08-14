module ResourcesApiClient
  # 
  class EntriesListResponse < BaseObject
    attr_accessor :total_no_limit, :entries
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Number of entries without skip/limit filter
        :'total_no_limit' => :'totalNoLimit',
        
        # List of entries
        :'entries' => :'entries'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'total_no_limit' => :'int',
        :'entries' => :'array[EntryOutput]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'totalNoLimit']
        @total_no_limit = attributes[:'totalNoLimit']
      end
      
      if attributes[:'entries']
        if (value = attributes[:'entries']).is_a?(Array)
          @entries = value
        end
      end
      
    end
  end
end
