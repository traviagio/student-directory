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
  # while the name is not empty, repeat this code
  
  loop do 
    puts "Please enter your name:"
       name = gets.chomp
       break if name.empty?
     puts "Please enter your cohort:"
       cohort = gets.chomp 
       break if cohort.empty?  
     puts "Please enter your country:"
       country = gets.chomp
       break if country.empty?
       student = {:name => name, :cohort => cohort, :country => country}
       students << student
       if students.length == 1
       puts_center "Now we have #{students.length} student from " + country.to_s
       else
       puts_center "Now we have #{students.length} students from " + country.to_s
       end
       puts_center "Please continue if you wish to add more students." 
       puts_center "To exit, please hit return twice!" 
  end  
  

  students
end

students = input_students
print_header
print(students)
print_footer(students)