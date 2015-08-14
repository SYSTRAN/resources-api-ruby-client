module ResourcesApiClient
  # 
  class CorpusSegmentAddTargetRequest < BaseObject
    attr_accessor :corpus_id, :seg_id, :targets
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Corpus identifier
        :'corpus_id' => :'corpusId',
        
        # Segment identifier
        :'seg_id' => :'segId',
        
        # List of targets
        :'targets' => :'targets'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'corpus_id' => :'string',
        :'seg_id' => :'string',
        :'targets' => :'array[CorpusAddSegmentTarget]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'corpusId']
        @corpus_id = attributes[:'corpusId']
      end
      
      if attributes[:'segId']
        @seg_id = attributes[:'segId']
      end
      
      if attributes[:'targets']
        if (value = attributes[:'targets']).is_a?(Array)
          @targets = value
        end
      end
      
    end
  end
end
