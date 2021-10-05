def signup
  puts "SIGNUP"
  puts "Saisis ton mot de passe "
  print ">"
  password = gets.chomp
  puts""
  return password
end

def login(pw)
  puts "LOGIN"
  print ">"
  password_attempt = gets.chomp
  while pw != password_attempt
    puts "Tu t'es trompé, recommence!"
    print ">"
    password_attempt = gets.chomp
  end
  puts""
end

def welcome_screen
  puts "WELCOME SCREEN"
  puts "Bienvenue dans la zone secrète."
  puts "Voici les informations secrètes : "
  puts "'Message important pour Nestor: la girafe a un long cou'"
  puts "'Le coq chantera trois fois'"
  puts "'Les plus désespérés sont les chants les plus beaux'"
end

def perform
  login(signup)
  welcome_screen
end

perform