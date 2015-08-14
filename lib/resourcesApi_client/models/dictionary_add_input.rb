module ResourcesApiClient
  # 
  class DictionaryAddInput < BaseObject
    attr_accessor :source_lang, :name, :target_langs, :comments, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'name' => :'name',
        
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
        :'source_lang' => :'string',
        :'name' => :'string',
        :'target_langs' => :'string',
        :'comments' => :'string',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
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
