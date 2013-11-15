def print_header
  puts_center "The students of my cohort at Makers Academy" 
  puts_center "-------------"
end

def print(students)
  students.each do |student|
    puts_center "#{student[:name]} (#{student[:cohort]} cohort) from (#{student[:country]})"  
  end
end

#def print_grouped_students(students)
 #   puts_center cohort  
  #students.map { |student| student[:cohort] }
   # puts_center "#{student[:name]} from (#{student[:country]})"  
#end


def print_footer(names)    
  puts_center "Overall, we have #{names.length} great students" 
end

def puts_center(string)
    puts string.center(140)
end

def print_country(students,country)
  if students.length == 1
    puts_center "Now we have #{students.length} student from " + country.to_s
  else
    puts_center "Now we have #{students.length} students from " + country.to_s
  end
end

def get_name
  puts "Please enter your name:"
  gets.chomp
end

def get_cohort
  puts "Please enter your cohort:"
  gets.chomp
end  

def get_country
  puts "Please enter your country:"
  gets.chomp
end  

def input_students
  puts_center "Please enter the names of the students"
  puts_center "To finish, just hit return twice" 
  # create an empty array
  students = []
  # get the first name
  # while the name is not empty, repeat this code
  
  loop do 
      name = get_name
      break if name.empty?
      
      cohort = get_cohort 
      break if cohort.empty?

      
      country = get_country
      break if country.empty?

      student = {:name => name, :cohort => cohort, :country => country}
      students << student
      print_country(students,country)
      puts_center "Please continue if you wish to add more students." 
      puts_center "To exit, please hit return twice!" 
  end  
 
  students
end




students = input_students
print_header
#print(students)
#print_grouped_students(students)
print_footer(students)