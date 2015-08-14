module ResourcesApiClient
  # 
  class DictionaryUpdateBody < BaseObject
    attr_accessor :dictionary
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'dictionary' => :'dictionary'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'dictionary' => :'DictionaryUpdateInput'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'dictionary']
        @dictionary = attributes[:'dictionary']
      end
      
    end
  end
end
