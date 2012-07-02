require 'date'

def same(year1, year2)
  cb = Date.new(year1,1,1) 
  pb = Date.new(year2,1,1)
  ce = Date.new(year1,12,31)
  pe = Date.new(year2,12,31)

  if cb.wday == pb.wday && ce.wday == pe.wday
    return true
  else
  	return false
  end
end
