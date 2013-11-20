# let's put all the students into an arrayn
students = []
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

def input_students
  puts "please enter the names of the students and there cohort"
  puts "hit return. To finish hit return twice"
  students=[]
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => cohort}
  puts "now we have #{students.length} students"
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  students
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
    print_header
    print (students)
    print_footer (students)
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
