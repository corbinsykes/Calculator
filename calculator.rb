def get_two_numbers
  puts "What's the first number?"
    first = gets.chomp.to_f
  puts "What's the second number?"
    second = gets.chomp.to_f
  return first, second
end

def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def multiply(x,y)
  return x*y
end

def divide_decimal(x,y)
  return x/y
end

def divide_remainder(x,y)
   return (x/y).to_s +  " with a remainder of " + (x%y).to_s
end

puts "Before we get started, what's your name?"
  name = gets.chomp
    puts "Welcome, #{name}. I'm a calculator. Let's get started, shall we?"

puts "What type of function would you like to perform?"
  puts  "1. Arithmatic"
  puts  "2. Annual Compound Interest"
  puts  "3. Body Mass Index"
  puts  "4. Earned Run Average"
  puts  "5. NCAA Passer Rating"

  function_choice = gets.chomp
case function_choice.downcase
  when "arithmatic"
    puts "Which Operation?"
      puts "1. Addition"
      puts "2. Subtraction"
      puts "3. Multiplication"
      puts "4. Division"
      operation_choice = gets.chomp

      case operation_choice.downcase
        when "addition"
          puts "What's the first number?"
            x = gets.chomp.to_f
          puts "What's the second number?"
            y = gets.chomp.to_f
        p add(x,y)

        when "subtraction"
          puts "What's the first number?"
            x = gets.chomp.to_f
          puts "What's the second number?"
            y = gets.chomp.to_f
        p subtract(x,y)

        when "division"
          puts "Would you like a decimal or a remainder?"
            division_choice = gets.chomp
            case division_choice.downcase
              when "decimal"
                puts "What's the first number?"
                  x = gets.chomp.to_f
                puts "What's the second number?"
                  y = gets.chomp.to_f
              p divide_decimal(x,y)

              when "remainder"
                puts "What's the first number?"
                  x = gets.chomp.to_i
                puts "What's the second number?"
                  y = gets.chomp.to_i
              p divide_remainder(x,y)
            end

        when "multiplication"
          puts "What's the first number?"
            x = gets.chomp.to_f
          puts "What's the second number?"
            y = gets.chomp.to_f
        p multiply(x,y)
      end
end