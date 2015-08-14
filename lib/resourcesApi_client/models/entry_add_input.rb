module ResourcesApiClient
  # 
  class EntryAddInput < BaseObject
    attr_accessor :source_lang, :target_lang, :source, :target, :type, :source_pos, :target_pos, :priority
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'target_lang' => :'targetLang',
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target',
        
        # 
        :'type' => :'type',
        
        # 
        :'source_pos' => :'sourcePos',
        
        # 
        :'target_pos' => :'targetPos',
        
        # 
        :'priority' => :'priority'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source_lang' => :'string',
        :'target_lang' => :'string',
        :'source' => :'string',
        :'target' => :'string',
        :'type' => :'string',
        :'source_pos' => :'string',
        :'target_pos' => :'string',
        :'priority' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'targetLang']
        @target_lang = attributes[:'targetLang']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'sourcePos']
        @source_pos = attributes[:'sourcePos']
      end
      
      if attributes[:'targetPos']
        @target_pos = attributes[:'targetPos']
      end
      
      if attributes[:'priority']
        @priority = attributes[:'priority']
      end
      
    end
  end
end
