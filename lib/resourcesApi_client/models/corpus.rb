module ResourcesApiClient
  # 
  class Corpus < BaseObject
    attr_accessor :id, :name, :created_at, :format, :nb_segments, :source_lang, :target_langs, :status
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Identifier
        :'id' => :'id',
        
        # Name
        :'name' => :'name',
        
        # Creation date
        :'created_at' => :'createdAt',
        
        # Format
        :'format' => :'format',
        
        # Number of segments
        :'nb_segments' => :'nbSegments',
        
        # Source language
        :'source_lang' => :'sourceLang',
        
        # Target languages
        :'target_langs' => :'targetLangs',
        
        # Corpus status
        :'status' => :'status'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'name' => :'string',
        :'created_at' => :'string',
        :'format' => :'string',
        :'nb_segments' => :'int',
        :'source_lang' => :'string',
        :'target_langs' => :'array[string]',
        :'status' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'createdAt']
        @created_at = attributes[:'createdAt']
      end
      
      if attributes[:'format']
        @format = attributes[:'format']
      end
      
      if attributes[:'nbSegments']
        @nb_segments = attributes[:'nbSegments']
      end
      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'targetLangs']
        if (value = attributes[:'targetLangs']).is_a?(Array)
          @target_langs = value
        end
      end
      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
    end
  end
end
