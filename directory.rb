def print_header
  puts_center "The students of my cohort at Makers Academy" 
  puts_center "-------------"
end

def print(students)
  students.each do |student|
    puts_center "#{student[:name]} (#{student[:cohort]} cohort) from (#{student[:country]})"  
  end
end

def print_footer(names)    
  puts_center "Overall, we have #{names.length} great students" 
end

def puts_center(string)
    puts string.center(140)
end

def input_students
  puts_center "Please enter the names of the students"
  puts_center "To finish, just hit return twice" 
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => :november, :country => :UK}  
    puts_center "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)