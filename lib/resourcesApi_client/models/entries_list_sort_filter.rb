module ResourcesApiClient
  # 
  class EntriesListSortFilter < BaseObject
    attr_accessor :source, :target, :part_of_speech, :priority, :comments, :source_confidence, :target_confidence, :target_lang
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 1/-1 for ascending/descending order on source field
        :'source' => :'source',
        
        # 1/-1 for ascending/descending order on target field
        :'target' => :'target',
        
        # 1/-1 for ascending/descending order on partOfSpeech field
        :'part_of_speech' => :'partOfSpeech',
        
        # 1/-1 for ascending/descending order on priority field
        :'priority' => :'priority',
        
        # 1/-1 for ascending/descending order on comments field
        :'comments' => :'comments',
        
        # 1/-1 for ascending/descending order on sourceConfidence field
        :'source_confidence' => :'sourceConfidence',
        
        # 1/-1 for ascending/descending order on targetConfidence field
        :'target_confidence' => :'targetConfidence',
        
        # 1/-1 for ascending/descending order on targetLang field
        :'target_lang' => :'targetLang'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source' => :'int',
        :'target' => :'int',
        :'part_of_speech' => :'int',
        :'priority' => :'int',
        :'comments' => :'int',
        :'source_confidence' => :'int',
        :'target_confidence' => :'int',
        :'target_lang' => :'int'
        
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
      
      if attributes[:'targetLang']
        @target_lang = attributes[:'targetLang']
      end
      
    end
  end
end
