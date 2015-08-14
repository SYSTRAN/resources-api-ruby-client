module ResourcesApiClient
  # 
  class CorpusMatchResponse < BaseObject
    attr_accessor :matches
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of matches for each input string
        :'matches' => :'matches'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'matches' => :'array[CorpusMatches]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'matches']
        if (value = attributes[:'matches']).is_a?(Array)
          @matches = value
        end
      end
      
    end
  end
end
