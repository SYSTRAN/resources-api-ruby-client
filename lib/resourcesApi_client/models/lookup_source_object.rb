module ResourcesApiClient
  # 
  class LookupSourceObject < BaseObject
    attr_accessor :inflection, :info, :lemma, :phonetic, :pos, :term
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'inflection' => :'inflection',
        
        # 
        :'info' => :'info',
        
        # 
        :'lemma' => :'lemma',
        
        # 
        :'phonetic' => :'phonetic',
        
        # 
        :'pos' => :'pos',
        
        # 
        :'term' => :'term'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'inflection' => :'string',
        :'info' => :'string',
        :'lemma' => :'string',
        :'phonetic' => :'string',
        :'pos' => :'string',
        :'term' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'inflection']
        @inflection = attributes[:'inflection']
      end
      
      if attributes[:'info']
        @info = attributes[:'info']
      end
      
      if attributes[:'lemma']
        @lemma = attributes[:'lemma']
      end
      
      if attributes[:'phonetic']
        @phonetic = attributes[:'phonetic']
      end
      
      if attributes[:'pos']
        @pos = attributes[:'pos']
      end
      
      if attributes[:'term']
        @term = attributes[:'term']
      end
      
    end
  end
end
