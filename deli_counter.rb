# Write your code here.
def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

$number = 1

def take_a_number(deli)
  deli << $number
  $number += 1
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end

line = []
take_a_number(line) # [1]
puts line.to_s
take_a_number(line) # [1,2]
puts line.to_s
now_serving(line) # [2]
puts line.to_s
now_serving(line) # []
puts line.to_s
take_a_number(line) # [3]
puts line.to_s
