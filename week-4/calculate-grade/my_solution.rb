# Calculate a Grade


# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)
	grade = grade.to_f
	if grade >= 90
		p 'A'
	elsif grade >= 80 && grade < 90
		p 'B'
	elsif grade >= 70 && grade < 80
		p 'C'
	elsif grade >= 60 && grade < 70
		p 'D'
	else
		p 'F'
	end
end

puts "Your class average: "
average = gets.chomp.to_i
get_grade(average)