module ResourcesApiClient
  # 
  class EntriesListFilters < BaseObject
    attr_accessor :skip, :limit, :sort, :match
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'skip' => :'skip',
        
        # 
        :'limit' => :'limit',
        
        # 
        :'sort' => :'sort',
        
        # 
        :'match' => :'match'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'skip' => :'int',
        :'limit' => :'int',
        :'sort' => :'EntriesListSortFilter',
        :'match' => :'EntriesListMatchFilter'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'skip']
        @skip = attributes[:'skip']
      end
      
      if attributes[:'limit']
        @limit = attributes[:'limit']
      end
      
      if attributes[:'sort']
        @sort = attributes[:'sort']
      end
      
      if attributes[:'match']
        @match = attributes[:'match']
      end
      
    end
  end
end
