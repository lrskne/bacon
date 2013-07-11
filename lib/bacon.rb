class Bacon
attr_accessor :expired
# added class the rspec wants!
def edible?
#true 
  !expired
 
end

def expired!
#removed self.expired, changed to just .expired
expired = true
end


end
