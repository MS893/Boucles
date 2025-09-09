# exercice pyramide

def half_pyramid
    puts "Donnez un nombre entre 1 et 25"
    print "> "
    number = gets.chomp.to_i
    for i in 1..number do
        puts " " * (number - i) + "#" * i 
    end 
end

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    number = gets.chomp.to_i
    puts "Voici la pyramide :"
    for i in 1..number do
        puts " " * (number - i) + "#" * ((2 * i) - 1)
    end 
end

def wtf_pyramid
    number = 1  # initialisation
    loop do
        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
        puts "(choisis un nombre impair)"
        print "> "
        number = gets.chomp.to_i
        if number.odd? then
            break   # on ne sort de la boucle infinie que lorsque le nombre est impair
        else
            puts "Le nombre doit être impair ! Recommence !"
        end
    end
    puts "Voici la pyramide :"
    for i in 1..number do
        puts " " * (number - i) + "#" * ((2 * i) - 1)
    end 
    number.downto(1) do |i|
        puts " " * (number - i) + "#" * ((2 * i) - 1)
    end 
end

# half_pyramid
# full_pyramid
wtf_pyramid