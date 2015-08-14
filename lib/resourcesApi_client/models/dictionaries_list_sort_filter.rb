module ResourcesApiClient
  # 
  class DictionariesListSortFilter < BaseObject
    attr_accessor :nb_entries, :comments, :name, :source_lang, :target_langs
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 1/-1 for ascending/descending order on nbEntries field
        :'nb_entries' => :'nbEntries',
        
        # 1/-1 for ascending/descending order on comments field
        :'comments' => :'comments',
        
        # 1/-1 for ascending/descending order on name field
        :'name' => :'name',
        
        # 1/-1 for ascending/descending order on sourceLang field
        :'source_lang' => :'sourceLang',
        
        # 1/-1 for ascending/descending order on targetLangs field
        :'target_langs' => :'targetLangs'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'nb_entries' => :'int',
        :'comments' => :'int',
        :'name' => :'int',
        :'source_lang' => :'int',
        :'target_langs' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'nbEntries']
        @nb_entries = attributes[:'nbEntries']
      end
      
      if attributes[:'comments']
        @comments = attributes[:'comments']
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
      
    end
  end
end
