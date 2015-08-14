module ResourcesApiClient
  # 
  class DictionariesImportResponse < BaseObject
    attr_accessor :duplicates, :inserted, :total
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Number of entries that was already present in the dictionary
        :'duplicates' => :'duplicates',
        
        # Number of entries succesfully inserted
        :'inserted' => :'inserted',
        
        # Number of entries processed
        :'total' => :'total'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'duplicates' => :'int',
        :'inserted' => :'int',
        :'total' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'duplicates']
        @duplicates = attributes[:'duplicates']
      end
      
      if attributes[:'inserted']
        @inserted = attributes[:'inserted']
      end
      
      if attributes[:'total']
        @total = attributes[:'total']
      end
      
    end
  end
end
