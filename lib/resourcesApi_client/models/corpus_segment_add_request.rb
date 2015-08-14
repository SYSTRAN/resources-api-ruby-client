module ResourcesApiClient
  # 
  class CorpusSegmentAddRequest < BaseObject
    attr_accessor :corpus_id, :segments
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Corpus identifier
        :'corpus_id' => :'corpusId',
        
        # List of segments to add
        :'segments' => :'segments'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'corpus_id' => :'string',
        :'segments' => :'array[CorpusAddSegment]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'corpusId']
        @corpus_id = attributes[:'corpusId']
      end
      
      if attributes[:'segments']
        if (value = attributes[:'segments']).is_a?(Array)
          @segments = value
        end
      end
      
    end
  end
end
