module ResourcesApiClient
  # 
  class CorpusDeleteResponse < BaseObject
    attr_accessor :files
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of deleted corpora
        :'files' => :'files'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'files' => :'array[LiteCorpus]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'files']
        if (value = attributes[:'files']).is_a?(Array)
          @files = value
        end
      end
      
    end
  end
end
