def meth(code=nil)
  @code = code ||= "generate_code"
  p code
end

p meth
p meth("code")







def name
  @name ||= use_slow_database_lookup
end



p [-2,0].max



begin
  raise "error" if rand(10) < 7
rescue
  p "do this in case of error"
  retry  #(could cause an infinite loop)
end

p gets.upcase.scan(/[RGBOYP]/).first(4)
