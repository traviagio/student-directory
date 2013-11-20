# let's put all the students into an arrayn
@students = []
def print_header
        puts "the students of my cohort at makers academy"
        puts "--------------"
end

def print(students)
        students.each do |student|
                puts "#{student[:name]} (#{student[:cohort]} cohort)".center(80)
        end
end

def print_footer(names)        
        puts "overall we have #{names.length} great students"
end

def print_input_students
  puts "please enter the names of the students and there cohort"
  puts "hit return. To finish hit return twice"
end

def input_students
  print_input_students
  students=[]
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => cohort}
  puts "now we have #{students.length} students"
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  @students = students
end

def show_students
    print_header
    print(@students)
    print_footer(@students)
end

def print_menu # 3. do what the user has asked
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def selection_process # 2. read the input and save it into a variable
  selection = gets.chomp
  case selection
  when "1"
  input_students
  when "2"
       show_students  
  when "9"
     exit #this will cause the program to terminate
  else
    puts " I don't know what you meant, try again"
  end
end

def interactive_menu 
  loop do
  # 1. print the menu and ask the user what to do
  print_menu
  selection_process
  # 4. repeat from step 1

  end
end
#nothing happens until we call methods

interactive_menu
