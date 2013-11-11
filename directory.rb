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
# and then print them
puts "The students of my cohort at Makers Academy"
puts "_________________"
students.each do |student|
	puts student
end
#finally, we print the total
print "Overall, we have #{students.length} great students"