module ResourcesApiClient
  # 
  class CorpusAddResponse < BaseObject
    attr_accessor :corpus
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'corpus' => :'corpus'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'corpus' => :'LiteCorpus'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'corpus']
        @corpus = attributes[:'corpus']
      end
      
    end
  end
end
