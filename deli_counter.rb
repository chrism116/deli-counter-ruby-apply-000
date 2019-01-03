# Write your code here.
def line(katz_deli)
  line_order = "The line is currently:"
  if katz_deli==[]
    puts "The line is currently empty."
  else
    katz_deli.each_with_index  {|name, idx| line_order=line_order+" #{idx+1}. #{name}"}
    puts line_order
  end
end

last_ticket=1

def take_a_number(katz_deli)
  
  if katz_deli!=[]
  place = katz_deli.length+1
  next_ticket = katz_deli[place-1] + 1
  katz_deli.push(next_ticket)
  
else
  katz_deli[0]=last_ticket
  
end
puts "Ticket number: #{last_ticket}, is number #{place} in line."
last_ticket+=1
end



def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
