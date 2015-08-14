module ResourcesApiClient
  # 
  class DictionaryAddOutput < BaseObject
    attr_accessor :id, :name, :source_lang, :target_langs, :comments, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'name' => :'name',
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'target_langs' => :'targetLangs',
        
        # 
        :'comments' => :'comments',
        
        # 
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'name' => :'string',
        :'source_lang' => :'string',
        :'target_langs' => :'string',
        :'comments' => :'string',
        :'type' => :'string'
        
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
      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'targetLangs']
        @target_langs = attributes[:'targetLangs']
      end
      
      if attributes[:'comments']
        @comments = attributes[:'comments']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
