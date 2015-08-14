module ResourcesApiClient
  # 
  class EntriesListMatchFilter < BaseObject
    attr_accessor :in_source, :nin_source, :regex_source, :in_target, :nin_target, :regex_target, :in_part_of_speech, :nin_part_of_speech, :regex_comments, :in_target_lang, :nin_target_lang, :min_priority, :max_priority, :in_priority, :nin_priority, :min_source_confidence, :max_source_confidence, :in_source_confidence, :nin_source_confidence, :min_target_confidence, :max_target_confidence, :in_target_confidence, :nin_target_confidence
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Match all entries with source present in a subset of values
        :'in_source' => :'inSource',
        
        # Match all entries with source not present in a subset of values
        :'nin_source' => :'ninSource',
        
        # Match all entries with source containing the specified value
        :'regex_source' => :'regexSource',
        
        # Match all entries with target present in a subset of values
        :'in_target' => :'inTarget',
        
        # Match all entries with target not present in a subset of values
        :'nin_target' => :'ninTarget',
        
        # Match all entries with target containing the specified value
        :'regex_target' => :'regexTarget',
        
        # Match all entries with part of speech present in a subset of values
        :'in_part_of_speech' => :'inPartOfSpeech',
        
        # Match all entries with part of speech not present in a subset of values
        :'nin_part_of_speech' => :'ninPartOfSpeech',
        
        # Match all entries with comments containing the specified value
        :'regex_comments' => :'regexComments',
        
        # Match all entries with target lang present in a subset of values
        :'in_target_lang' => :'inTargetLang',
        
        # Match all entries with target lang not present in a subset of values
        :'nin_target_lang' => :'ninTargetLang',
        
        # Match all entries with priority equal and over specified value
        :'min_priority' => :'minPriority',
        
        # Match all entries with priority under and equal specified value
        :'max_priority' => :'maxPriority',
        
        # Match all entries with priority present in a subset of values
        :'in_priority' => :'inPriority',
        
        # Match all entries with priority not present in a subset of values
        :'nin_priority' => :'ninPriority',
        
        # Match all entries with source confidence equal and over specified value
        :'min_source_confidence' => :'minSourceConfidence',
        
        # Match all entries with source confidence under and equal specified value
        :'max_source_confidence' => :'maxSourceConfidence',
        
        # Match all entries with sourceConfidence present in a subset of values
        :'in_source_confidence' => :'inSourceConfidence',
        
        # Match all entries with sourceConfidence not present in a subset of values
        :'nin_source_confidence' => :'ninSourceConfidence',
        
        # Match all entries with target confidence equal and over specified value
        :'min_target_confidence' => :'minTargetConfidence',
        
        # Match all entries with target confidence under and equal specified value
        :'max_target_confidence' => :'maxTargetConfidence',
        
        # Match all entries with targetConfidence present in a subset of values
        :'in_target_confidence' => :'inTargetConfidence',
        
        # Match all entries with targetConfidence not present in a subset of values
        :'nin_target_confidence' => :'ninTargetConfidence'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'in_source' => :'array[string]',
        :'nin_source' => :'array[string]',
        :'regex_source' => :'string',
        :'in_target' => :'array[string]',
        :'nin_target' => :'array[string]',
        :'regex_target' => :'string',
        :'in_part_of_speech' => :'array[string]',
        :'nin_part_of_speech' => :'array[string]',
        :'regex_comments' => :'string',
        :'in_target_lang' => :'array[string]',
        :'nin_target_lang' => :'array[string]',
        :'min_priority' => :'int',
        :'max_priority' => :'int',
        :'in_priority' => :'array[int]',
        :'nin_priority' => :'array[int]',
        :'min_source_confidence' => :'int',
        :'max_source_confidence' => :'int',
        :'in_source_confidence' => :'array[int]',
        :'nin_source_confidence' => :'array[int]',
        :'min_target_confidence' => :'int',
        :'max_target_confidence' => :'int',
        :'in_target_confidence' => :'array[int]',
        :'nin_target_confidence' => :'array[int]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'inSource']
        if (value = attributes[:'inSource']).is_a?(Array)
          @in_source = value
        end
      end
      
      if attributes[:'ninSource']
        if (value = attributes[:'ninSource']).is_a?(Array)
          @nin_source = value
        end
      end
      
      if attributes[:'regexSource']
        @regex_source = attributes[:'regexSource']
      end
      
      if attributes[:'inTarget']
        if (value = attributes[:'inTarget']).is_a?(Array)
          @in_target = value
        end
      end
      
      if attributes[:'ninTarget']
        if (value = attributes[:'ninTarget']).is_a?(Array)
          @nin_target = value
        end
      end
      
      if attributes[:'regexTarget']
        @regex_target = attributes[:'regexTarget']
      end
      
      if attributes[:'inPartOfSpeech']
        if (value = attributes[:'inPartOfSpeech']).is_a?(Array)
          @in_part_of_speech = value
        end
      end
      
      if attributes[:'ninPartOfSpeech']
        if (value = attributes[:'ninPartOfSpeech']).is_a?(Array)
          @nin_part_of_speech = value
        end
      end
      
      if attributes[:'regexComments']
        @regex_comments = attributes[:'regexComments']
      end
      
      if attributes[:'inTargetLang']
        if (value = attributes[:'inTargetLang']).is_a?(Array)
          @in_target_lang = value
        end
      end
      
      if attributes[:'ninTargetLang']
        if (value = attributes[:'ninTargetLang']).is_a?(Array)
          @nin_target_lang = value
        end
      end
      
      if attributes[:'minPriority']
        @min_priority = attributes[:'minPriority']
      end
      
      if attributes[:'maxPriority']
        @max_priority = attributes[:'maxPriority']
      end
      
      if attributes[:'inPriority']
        if (value = attributes[:'inPriority']).is_a?(Array)
          @in_priority = value
        end
      end
      
      if attributes[:'ninPriority']
        if (value = attributes[:'ninPriority']).is_a?(Array)
          @nin_priority = value
        end
      end
      
      if attributes[:'minSourceConfidence']
        @min_source_confidence = attributes[:'minSourceConfidence']
      end
      
      if attributes[:'maxSourceConfidence']
        @max_source_confidence = attributes[:'maxSourceConfidence']
      end
      
      if attributes[:'inSourceConfidence']
        if (value = attributes[:'inSourceConfidence']).is_a?(Array)
          @in_source_confidence = value
        end
      end
      
      if attributes[:'ninSourceConfidence']
        if (value = attributes[:'ninSourceConfidence']).is_a?(Array)
          @nin_source_confidence = value
        end
      end
      
      if attributes[:'minTargetConfidence']
        @min_target_confidence = attributes[:'minTargetConfidence']
      end
      
      if attributes[:'maxTargetConfidence']
        @max_target_confidence = attributes[:'maxTargetConfidence']
      end
      
      if attributes[:'inTargetConfidence']
        if (value = attributes[:'inTargetConfidence']).is_a?(Array)
          @in_target_confidence = value
        end
      end
      
      if attributes[:'ninTargetConfidence']
        if (value = attributes[:'ninTargetConfidence']).is_a?(Array)
          @nin_target_confidence = value
        end
      end
      
    end
  end
end
