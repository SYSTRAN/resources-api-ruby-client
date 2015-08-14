module ResourcesApiClient
  # 
  class DictionariesListResponse < BaseObject
    attr_accessor :total_no_limit, :dictionaries
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Number of dictionaries without skip/limit filter
        :'total_no_limit' => :'totalNoLimit',
        
        # List of dictionaries
        :'dictionaries' => :'dictionaries'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'total_no_limit' => :'int',
        :'dictionaries' => :'array[DictionaryOutput]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'totalNoLimit']
        @total_no_limit = attributes[:'totalNoLimit']
      end
      
      if attributes[:'dictionaries']
        if (value = attributes[:'dictionaries']).is_a?(Array)
          @dictionaries = value
        end
      end
      
    end
  end
end
