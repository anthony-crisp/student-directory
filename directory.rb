def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    while !name.empty? do
      students << {name: name,cohort: :November }
      puts "Now we have #{students.count} students"
      name = gets.chomp
  end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    i = 0
    until i == students.count
    puts "#{i + 1}. #{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
