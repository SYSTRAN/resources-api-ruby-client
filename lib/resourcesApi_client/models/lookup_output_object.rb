module ResourcesApiClient
  # 
  class LookupOutputObject < BaseObject
    attr_accessor :auto_complete, :s_dict_seach, :matches
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_complete' => :'autoComplete',
        
        # 
        :'s_dict_seach' => :'sDictSeach',
        
        # 
        :'matches' => :'matches'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_complete' => :'boolean',
        :'s_dict_seach' => :'boolean',
        :'matches' => :'array[LookupMatchObject]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'autoComplete']
        @auto_complete = attributes[:'autoComplete']
      end
      
      if attributes[:'sDictSeach']
        @s_dict_seach = attributes[:'sDictSeach']
      end
      
      if attributes[:'matches']
        if (value = attributes[:'matches']).is_a?(Array)
          @matches = value
        end
      end
      
    end
  end
end
