module ResourcesApiClient
  # 
  class CorpusMatches < BaseObject
    attr_accessor :form, :matches
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Searched form
        :'form' => :'form',
        
        # List of matches
        :'matches' => :'matches'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'form' => :'string',
        :'matches' => :'array[CorpusMatch]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'form']
        @form = attributes[:'form']
      end
      
      if attributes[:'matches']
        if (value = attributes[:'matches']).is_a?(Array)
          @matches = value
        end
      end
      
    end
  end
end
