module ResourcesApiClient
  # 
  class CorpusSegmentDeleteResponse < BaseObject
    attr_accessor :nb_deleted
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Number of deleted segments
        :'nb_deleted' => :'nbDeleted'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'nb_deleted' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'nbDeleted']
        @nb_deleted = attributes[:'nbDeleted']
      end
      
    end
  end
end
