@students = []

def print_menu
    puts "Type '1' to input students"
    puts "Type '2' view students"
    puts "Type '9' to exit"
  end

def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mean. Try again."
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def input_students
  puts "Please enter the names of the students and additional information."
  puts "To finish,  press Enter."
  name = gets.chomp
  puts "And their hobby?"
  hobby = gets.chomp
  puts "And their height?"
  height = gets.chomp
  puts "Their cohort?"
  cohort = gets.chomp

  while !name.empty? do
    @students << {
      name: default(name),
      cohort: default_cohort(cohort).to_sym.capitalize,
      hobby: default(hobby),
      height: default(height)
  }
    if @students.count == 1
      puts "Now we have 1 student. Please enter another."
    else
    puts "Now we have #{@students.count} students. Please enter another."
  end
    name = gets.chomp
    if !name.empty?
    puts "And their hobby?"
    hobby = gets.chomp
    puts "And their height?"
    height = gets.chomp
    puts "Their cohort?"
    cohort = gets.chomp
   end
  end
end

def default(x)
  if !x.empty?
    x
  else
    "NA"
  end
end

def print_header
    puts "The students of Villains Academy".center(100)
    puts "-------------".center(100)
end

def default_cohort(x)
  month = %w(january february march april may june july august september october november december)
  until month.include?(x.downcase)
    puts "Not a recognised month, please try again"
    x = gets.chomp
  end
  x
end

def print_students_list
  @students.each_with_index do |student, index|
  puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort). Hobbies: #{student[:hobby]}. Height: #{student[:height]}.".center(100)
  end
end

def print_footer
  if @students.count == 1
    puts "Overall, we have #{@students.count} great student.".center(100)
  elsif names.count >= 2
    puts "Overall, we have #{@students.count} great students.".center(101)
  else
    puts "No students enroled at this time.".center(100)
  end
end

interactive_menu
