require 'yaml'

class AddressValidator
  class << self
    
    #----------------------------------------------------------------------------
    def load_knowledge_base
      data = YAML.load_file "../../input.yaml"
      p data
    end
    
    
    #----------------------------------------------------------------------------
    def get_address(address)
      
    end
    
    
    #----------------------------------------------------------------------------
    def get_city(state)
    end
    
    
    #----------------------------------------------------------------------------
    def get_state(country)
    end
    
    
    #----------------------------------------------------------------------------
    def build_address(address)
    end
    
    
    #----------------------------------------------------------------------------
    def validate(address)
    end
  end
   
  
  load_knowledge_base
end
