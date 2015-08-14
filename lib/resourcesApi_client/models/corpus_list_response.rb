module ResourcesApiClient
  # 
  class CorpusListResponse < BaseObject
    attr_accessor :files, :directories
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of corpus files
        :'files' => :'files',
        
        # List of directories. Returned only if directory parameter was specified in the request.
        :'directories' => :'directories'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'files' => :'array[Corpus]',
        :'directories' => :'array[string]'
        
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
      
      if attributes[:'directories']
        if (value = attributes[:'directories']).is_a?(Array)
          @directories = value
        end
      end
      
    end
  end
end
