module ResourcesApiClient
  # 
  class LookupTargetObject < BaseObject
    attr_accessor :context, :domain, :entry_id, :expressions, :invmeanings, :lemma, :rank, :synonym, :variant
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'context' => :'context',
        
        # 
        :'domain' => :'domain',
        
        # 
        :'entry_id' => :'entry_id',
        
        # 
        :'expressions' => :'expressions',
        
        # 
        :'invmeanings' => :'invmeanings',
        
        # 
        :'lemma' => :'lemma',
        
        # 
        :'rank' => :'rank',
        
        # 
        :'synonym' => :'synonym',
        
        # 
        :'variant' => :'variant'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'context' => :'string',
        :'domain' => :'string',
        :'entry_id' => :'string',
        :'expressions' => :'array[LookupExpressionObject]',
        :'invmeanings' => :'array[string]',
        :'lemma' => :'string',
        :'rank' => :'string',
        :'synonym' => :'string',
        :'variant' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'context']
        @context = attributes[:'context']
      end
      
      if attributes[:'domain']
        @domain = attributes[:'domain']
      end
      
      if attributes[:'entry_id']
        @entry_id = attributes[:'entry_id']
      end
      
      if attributes[:'expressions']
        if (value = attributes[:'expressions']).is_a?(Array)
          @expressions = value
        end
      end
      
      if attributes[:'invmeanings']
        if (value = attributes[:'invmeanings']).is_a?(Array)
          @invmeanings = value
        end
      end
      
      if attributes[:'lemma']
        @lemma = attributes[:'lemma']
      end
      
      if attributes[:'rank']
        @rank = attributes[:'rank']
      end
      
      if attributes[:'synonym']
        @synonym = attributes[:'synonym']
      end
      
      if attributes[:'variant']
        @variant = attributes[:'variant']
      end
      
    end
  end
end
