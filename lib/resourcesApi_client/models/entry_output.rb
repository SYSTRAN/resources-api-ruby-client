module ResourcesApiClient
  # 
  class EntryOutput < BaseObject
    attr_accessor :source, :target, :part_of_speech, :priority, :comments, :source_confidence, :target_confidence, :source_lang, :target_lang, :source_id, :target_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source' => :'source',
        
        # 
        :'target' => :'target',
        
        # 
        :'part_of_speech' => :'partOfSpeech',
        
        # 
        :'priority' => :'priority',
        
        # 
        :'comments' => :'comments',
        
        # 
        :'source_confidence' => :'sourceConfidence',
        
        # 
        :'target_confidence' => :'targetConfidence',
        
        # 
        :'source_lang' => :'sourceLang',
        
        # 
        :'target_lang' => :'targetLang',
        
        # 
        :'source_id' => :'sourceId',
        
        # 
        :'target_id' => :'targetId'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'string',
        :'target' => :'string',
        :'part_of_speech' => :'string',
        :'priority' => :'int',
        :'comments' => :'string',
        :'source_confidence' => :'int',
        :'target_confidence' => :'int',
        :'source_lang' => :'string',
        :'target_lang' => :'string',
        :'source_id' => :'string',
        :'target_id' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'partOfSpeech']
        @part_of_speech = attributes[:'partOfSpeech']
      end
      
      if attributes[:'priority']
        @priority = attributes[:'priority']
      end
      
      if attributes[:'comments']
        @comments = attributes[:'comments']
      end
      
      if attributes[:'sourceConfidence']
        @source_confidence = attributes[:'sourceConfidence']
      end
      
      if attributes[:'targetConfidence']
        @target_confidence = attributes[:'targetConfidence']
      end
      
      if attributes[:'sourceLang']
        @source_lang = attributes[:'sourceLang']
      end
      
      if attributes[:'targetLang']
        @target_lang = attributes[:'targetLang']
      end
      
      if attributes[:'sourceId']
        @source_id = attributes[:'sourceId']
      end
      
      if attributes[:'targetId']
        @target_id = attributes[:'targetId']
      end
      
    end
  end
end
