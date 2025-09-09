def signup
  puts "Choisissez un mot de passe"
  print "> "
  password = gets.chomp
  return password
end

def login(password)
  puts "Entrez votre mot de passe"
  print "> "
  user_password = gets.chomp
  while (user_password != password) do
    puts "Mot de passe incorrect, essayez encore"
    print "> "
    user_password = gets.chomp
  end
  puts "Mot de passe correct, vous êtes connecté"
end

def welcome_screen
  puts "Bienvenue dans votre zone secrète (SMS et Whatsapp)"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform