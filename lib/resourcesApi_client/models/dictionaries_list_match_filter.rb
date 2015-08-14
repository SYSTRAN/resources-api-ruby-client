module ResourcesApiClient
  # 
  class DictionariesListMatchFilter < BaseObject
    attr_accessor :in_source_lang, :nin_source_lang, :in_target_langs, :regex_comments, :in_nb_entries, :nin_nb_entries, :min_nb_entries, :max_nb_entries, :in_name, :nin_name, :regex_name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Match all dictionaries with sourceLang present in a subset of values
        :'in_source_lang' => :'inSourceLang',
        
        # Match all dictionaries with sourceLang not present in a subset of values
        :'nin_source_lang' => :'ninSourceLang',
        
        # Match all dictionaries with targetLang from a subset of values present in targetLangs property
        :'in_target_langs' => :'inTargetLangs',
        
        # Match all entries with comments containing the specified value
        :'regex_comments' => :'regexComments',
        
        # Match all dictionaries with nbEntries present in a subset of values
        :'in_nb_entries' => :'inNbEntries',
        
        # Match all dictionaries with nbEntries not present in a subset of values
        :'nin_nb_entries' => :'ninNbEntries',
        
        # Match all entries with nbEntries equal and over specified value
        :'min_nb_entries' => :'minNbEntries',
        
        # Match all entries with nbEntries under and equal specified value
        :'max_nb_entries' => :'maxNbEntries',
        
        # Match all entries with name present in a subset of values
        :'in_name' => :'inName',
        
        # Match all entries with name not present in a subset of values
        :'nin_name' => :'ninName',
        
        # Match all entries with name containing the specified value
        :'regex_name' => :'regexName'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'in_source_lang' => :'array[string]',
        :'nin_source_lang' => :'array[string]',
        :'in_target_langs' => :'array[string]',
        :'regex_comments' => :'string',
        :'in_nb_entries' => :'array[int]',
        :'nin_nb_entries' => :'array[int]',
        :'min_nb_entries' => :'int',
        :'max_nb_entries' => :'int',
        :'in_name' => :'array[string]',
        :'nin_name' => :'array[string]',
        :'regex_name' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'inSourceLang']
        if (value = attributes[:'inSourceLang']).is_a?(Array)
          @in_source_lang = value
        end
      end
      
      if attributes[:'ninSourceLang']
        if (value = attributes[:'ninSourceLang']).is_a?(Array)
          @nin_source_lang = value
        end
      end
      
      if attributes[:'inTargetLangs']
        if (value = attributes[:'inTargetLangs']).is_a?(Array)
          @in_target_langs = value
        end
      end
      
      if attributes[:'regexComments']
        @regex_comments = attributes[:'regexComments']
      end
      
      if attributes[:'inNbEntries']
        if (value = attributes[:'inNbEntries']).is_a?(Array)
          @in_nb_entries = value
        end
      end
      
      if attributes[:'ninNbEntries']
        if (value = attributes[:'ninNbEntries']).is_a?(Array)
          @nin_nb_entries = value
        end
      end
      
      if attributes[:'minNbEntries']
        @min_nb_entries = attributes[:'minNbEntries']
      end
      
      if attributes[:'maxNbEntries']
        @max_nb_entries = attributes[:'maxNbEntries']
      end
      
      if attributes[:'inName']
        if (value = attributes[:'inName']).is_a?(Array)
          @in_name = value
        end
      end
      
      if attributes[:'ninName']
        if (value = attributes[:'ninName']).is_a?(Array)
          @nin_name = value
        end
      end
      
      if attributes[:'regexName']
        @regex_name = attributes[:'regexName']
      end
      
    end
  end
end
