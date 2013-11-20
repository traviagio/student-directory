def print_header
  puts_center "The students of my cohort at Makers Academy" 
  puts_center "-------------"
end

def print(students)
  students.each do |student|
    puts_center "#{student[:name]} (#{student[:cohort]} cohort) from (#{student[:country]})"  
  end
end

def print_grouped_students(students) 
    # puts_center "#{student[:name]} (#{student[:cohort]} cohort) from (#{student[:country]})"   
    students.map { |student| student[:cohort] }.uniq.each do |cohort|
       puts_center cohort
       students_in_cohort = students.select { |student| student[:cohort] == cohort }
        print students_in_cohort
    end
     #puts_center "#{student[:name]} from (#{student[:cohort]})" 
end


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
    puts_center "Now we have #{students.length} students. Latest one is coming from " + country.to_s
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

def print_menu
  print_header
  print (students)
  print_footer (students)
end  


def interactive_menu
  students = []  
  loop do
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
  case selection
  when "1"
   students = input_students
  when "2"
    print_menu
  when "9"
     exit #this will cause the program to terminate
  else
    puts " I don't know what you meant, try again"
  end

  # 4. repeat from step 1
    
  end
end
#nothing happens until we call methods

interactive_menu
