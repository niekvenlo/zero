def meth(code=nil)
  @code = code ||= "generate_code"
  p code
end

p meth
p meth("code")







def name
  @name ||= use_slow_database_lookup
end
