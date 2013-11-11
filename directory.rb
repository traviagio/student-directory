# let's put all students into an array
students = [
{:name => "Georgi Georgiev", :cohort => :november},
{:name => "JB", :cohort => :november},
{:name => "Ken", :cohort => :november},
{:name => "Aneth", :cohort => :november},
{:name => "Erica", :cohort => :november},
{:name => "Chris", :cohort => :november},
{:name => "Kumy", :cohort => :november},
{:name => "Lara", :cohort => :november},
{:name => "James", :cohort => :november},
{:name => "NightPain", :cohort => :november},
{:name => "James", :cohort => :november},
{:name => "NightPain", :cohort => :november},
{:name => "James", :cohort => :november},
{:name => "Jeremy", :cohort => :november},
{:name => "Giacomo", :cohort => :november},
{:name => "Nisar", :cohort => :november},
{:name => "Michael", :cohort => :november},
{:name => "Peter", :cohort => :november},
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "_________________"
end


def print(students)
	students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
 end
end

def print_footer(names)
puts "Overall, we have #{names.length} great students"
end

#nothing happens until we call methods

print_header
print(students)
print_footer(students)