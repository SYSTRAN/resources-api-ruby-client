module ResourcesApiClient
  # 
  class DictionaryUpdateOutput < BaseObject
    attr_accessor :name, :source_lang, :target_langs, :comments
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'name',
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'target_langs' => :'targetLangs',
        
        # 
        :'comments' => :'comments'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'string',
        :'source_lang' => :'string',
        :'target_langs' => :'string',
        :'comments' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
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
      
    end
  end
end
