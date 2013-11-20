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
  puts "Please enter the names of the students and the cohort"
  puts "When finished, hit return twice"
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
  @students << {:name => name, :cohort => cohort}
   end
   file.close
end   

def try_load_students 
    filename = ARGV.first #first argument from the command line
    return if filename.nil? #get out fo the method if it isn't given
    if File.exists?(filename) #if it exsists
      load_students(filename)
       puts "Loaded #{@students.length} from #{filename}"
     else #
       puts "Sorry #{filename} doesn't exsist."
       exit  
    end
end    



def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iretate over the students
  @students.each do |student| 
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
   end
   file.close
   puts "Your information has been saved!"
 end   

def input_students
  print_input_students
  students=[]
  puts "Please enter your name please:"
  name = STDIN.gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  puts "Now enter the cohort please:"
  cohort = STDIN.gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => cohort}
  puts "now we have #{students.length} students"
  name = STDIN.gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = STDIN.gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
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
  puts "3. Save students list"
  puts "4. Load student list"
  puts "9. Exit" # 9 because we'll be adding more items
end

def selection_process # 2. read the input and save it into a variable
  selection = STDIN.gets.chomp
  case selection
  when "1"
  input_students
  when "2"
       show_students  
  when "3"
        save_students
  when "4"
        load_students            
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
try_load_students
interactive_menu

