def numm(d,v)
  v[0].nil? ? d : [d.to_f,v[0][1]].reduce(v[0][0])
end
def zero(*v);  numm(0,v); end
def one(*v);   numm(1,v); end
def two(*v);   numm(2,v); end
def three(*v); numm(3,v); end
def four(*v);  numm(4,v); end
def five(*v);  numm(5,v); end
def six(*v);   numm(6,v); end
def seven(*v); numm(7,v); end
def eight(*v); numm(8,v); end
def nine(*v);  numm(9,v); end
def plus(num);       ["+",num]; end
def minus(num);      ["-",num]; end
def times(num);      ["*",num]; end
def divided_by(num); ["/",num]; end
