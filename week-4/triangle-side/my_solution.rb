# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a + b >c) && (a + c > b) && (b + c >a)
  	p true
  else
  	p false
  end
end

puts "What is side 1 of the triangle?"
side1 = gets.chomp.to_f
puts "What is side 2 of the triangle?"
side2 = gets.chomp.to_f
puts "What is side 3 of the triangle?"
side3 = gets.chomp.to_f