require 'yaml'

class AddressValidator
  class << self
    @@data = YAML.load_file "../../input.yaml"
    
    #----------------------------------------------------------------------------
    def init
      sample_address = {
                         "address1" => "59,abc apt",
                         "address2" => "test hights",
                         "city"     => "tcity",
                         "state"    => "tokyo",
                         "pin"      => "1400003",
                         "country"  => "japan" 
                        }
                      
      
      validate(sample_address)
      #p data
    end
  
    #----------------------------------------------------------------------------
    def validate_country(a_country)
      data.any? {|countries| countries.any? {|country| country == a_country} }
    end
      
    #----------------------------------------------------------------------------
    def validate_state(state, country)
      data[country].include?(state)
    end
    
    #----------------------------------------------------------------------------
    def validate_city(city, state, country)
      data[country][state].include?(city)
    end
    
    #----------------------------------------------------------------------------
    def validate_pin(country, pin)
      data[country]["pin_length"] == pin.length
    end
    
    #----------------------------------------------------------------------------
    def validate(address)
      p "country : " + validate_country(address["country"]).to_s
      p "state : "   + validate_state(address["state"], address["country"]).to_s
      p "city : "    + validate_city(address["city"], address["state"], address["country"]).to_s
      p "pin : "     + validate_pin(address["country"], address["pin"]).to_s
    end
    
    #----------------------------------------------------------------------------
    def data
      return @@data
    end
  end   
  
  s_time = Time.now
  init
  e_time = Time.now
  delta = e_time - s_time
  p "Time taken : " + delta.to_s
end
