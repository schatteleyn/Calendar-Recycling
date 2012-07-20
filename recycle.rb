require 'date'

def same(year1, year2)
  cb = Date.new(year1,1,1)    # current year begin date (first day of year) 
  pb = Date.new(year2,1,1)    # past year begin date (first day of year) 
  ce = Date.new(year1,12,31)  # current year end date (last day of year)  
  pe = Date.new(year2,12,31)  # past year end date (last day of year) 

  if cb.wday == pb.wday && ce.wday == pe.wday
    return true
  else
  	return false
  end
end

def equivalent(byear, y = true, pyear = nil)
  if pyear == nil
    if y == true  # Give the equivalence for the year entered
      tyear = byear
    else # Give the equivalence for 10 years from the one entered.
      tyear = byear+10
    end
  else
     tyear = pyear 
  end
  
  (byear..tyear).each do |c|
    print "#{c}: "
    ((byear-150)..c-1).each do |p|
      if same(c,p)
        print "#{p} "
      end
    end
  puts ""
  end
end

puts '1 - Equivalent year for a year.'
puts '2 - Equivalents year for 10 years'
puts '3 - Equivalent years for a range of year'
l = gets.chomp.to_i

if l == 1
  puts "Choose a year: "
  year = gets.chomp.to_i
  equivalent(year) 
elsif l == 2
  y = false
  puts "Choose a year: "
  year = gets.chomp.to_i
  equivalent(year, y)
elsif l == 3
  puts "Choose a beginning year: "
  byear = gets.chomp.to_i
  puts "Choose an ending year: "
  pyear = gets.chomp.to_i
  equivalent(byear, pyear)
else
  puts 'You entered a wrong parameter.'
end
