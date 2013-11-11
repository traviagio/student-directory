# let's put all students into an array
students = [
"Georgi Georgiev",
"JB",
"Ken",
"Aneth",
"Erica",
"Chris",
"Kumy",
"Lara",
"James",
"NightPain",
"James",
"NightPain",
"James",
"Jeremy",
"Giacomo",
"Nisar",
"Michael",
"Peter",
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "_________________"
end


def print(names)
	names.each do |name|
	puts name
 end
end

def print_footer(names)
puts "Overall, we have #{students.length} great students"
end

#nothing happens until we call methods

print_header
print(students)
print_footer(students)