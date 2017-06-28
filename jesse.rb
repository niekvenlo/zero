def example_method(input_hash)
  p input_hash
end

# Old-school version:
example_method({:name => "Bob",
                :email => "bob@gmail.com",
                :password => "pass1234"})

# Common, sugary version:
example_method name: "Bob",
               email: "bob@gmail.com",
               password: "pass1234"



class Thing
attr_reader :arr

def initialize
  @arr = [1,2,3,4,5]
end



end

thing = Thing.new
p thing.arr
p thing.arr[2] = 7
p thing.arr
