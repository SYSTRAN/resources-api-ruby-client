module ResourcesApiClient
  # 
  class LookupSupportedLanguageResponse < BaseObject
    attr_accessor :warning, :error, :language_pairs
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Warning at request level
        :'warning' => :'warning',
        
        # Error at request level
        :'error' => :'error',
        
        # Array of language pairs
        :'language_pairs' => :'languagePairs'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'warning' => :'string',
        :'error' => :'string',
        :'language_pairs' => :'array[LookupLanguagePair]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'warning']
        @warning = attributes[:'warning']
      end
      
      if attributes[:'error']
        @error = attributes[:'error']
      end
      
      if attributes[:'languagePairs']
        if (value = attributes[:'languagePairs']).is_a?(Array)
          @language_pairs = value
        end
      end
      
    end
  end
end
