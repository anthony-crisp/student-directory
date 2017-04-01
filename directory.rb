def input_students
    puts "Please enter the names of the students".center(100)
    puts "To finish, just hit return twice".center(100)
    students = []
    name = gets.chomp
    while !name.empty? do
      students << {name: name,cohort: :November }
      if students.count == 1
        puts  "Now we have #{students.count} student.".center(100)
      else
        puts  "Now we have #{students.count} students.".center(101)
      end
      name = gets.chomp
  end
    students
end

def print_header
    puts "The students of Villains Academy".center(100)
    puts "-------------".center(100)
end

def print(students)
    i = 0
    until i == students.count
    puts "#{i + 1}. #{students[i][:name]} (#{students[i][:cohort]} cohort)".center(100)
    i += 1
  end
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student.".center(100)
  elsif names.count >= 2
    puts "Overall, we have #{names.count} great students.".center(100)
  else
    puts "No students enroled at this time.".center(100)
  end
end

students = input_students
print_header
print(students)
print_footer(students)
