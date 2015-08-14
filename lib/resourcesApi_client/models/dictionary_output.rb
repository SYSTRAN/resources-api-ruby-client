module ResourcesApiClient
  # 
  class DictionaryOutput < BaseObject
    attr_accessor :nb_entries, :target_langs, :source_lang, :name, :comments, :type, :id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'nb_entries' => :'nbEntries',
        
        # 
        :'target_langs' => :'targetLangs',
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'name' => :'name',
        
        # 
        :'comments' => :'comments',
        
        # 
        :'type' => :'type',
        
        # 
        :'id' => :'id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'nb_entries' => :'int',
        :'target_langs' => :'string',
        :'source_lang' => :'string',
        :'name' => :'string',
        :'comments' => :'string',
        :'type' => :'string',
        :'id' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'nbEntries']
        @nb_entries = attributes[:'nbEntries']
      end
      
      if attributes[:'targetLangs']
        @target_langs = attributes[:'targetLangs']
      end
      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'comments']
        @comments = attributes[:'comments']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
    end
  end
end
