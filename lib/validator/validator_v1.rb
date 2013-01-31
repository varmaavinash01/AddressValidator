require 'yaml'

class AddressValidator
  class << self
    def load_knowledge_base
      data = YAML.load_file "../../input.yaml"
      p data
    end
  end
  
  load_knowledge_base
end
