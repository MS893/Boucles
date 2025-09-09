def lance_dé
    # retourne le résultat du jet du dé
    print "> "
    dé = rand(1..6)
    puts "Tu as tiré un #{dé}."
    return dé
end

def résultat(dé)
    if dé == 1
        puts "Pas de bol ! tu dois redescendre d'une marche"
        inc = -1
    elsif (dé == 2 || dé == 3 || dé == 4)
        puts "Coup de fatigue, tu dois te reposer et rester sur place"
        inc = 0
    else
        # on a forcément 5 ou 6
        puts "Tu peux monter d'une marche, courage !"
        inc = 1
    end
    return inc
end

def monte_à_pied
    # règles du jeu
    puts "Bienvenue dans 'Monte à pied' !"
    puts "Le but du jeu est d'atteindre la 10ème marche."
    puts "Pour cela, tu dois lancer un dé :"
    puts "- Si tu fais 1, tu descends d'une marche"
    puts "- Si tu fais 2, 3 ou 4, tu restes sur place"
    puts "- Si tu fais 5 ou 6, tu montes d'une marche"
    puts "Appuie sur [Enter] pour lancer le dé..."
    puts "Tape sur la touche [Enter] pour lancer le jeu..."
    print "> "
    stop = gets.chomp # juste pour faire une pause avant de lancer le dé
end

def jeu
    # lance le jeu
    dé = 0
    nb_coups = 0
    marche = 0
    while (marche < 10) do
        dé = lance_dé
        nb_coups = nb_coups + 1
        marche = marche + résultat(dé)
        puts "Tu es actuellement sur la marche n°#{marche}."
    end
    puts "Félicitations, tu as atteint la 10ème marche, la prochaine fois prends l'ascenseur !"
    puts "Tout ça en ayant lancé le dé #{nb_coups} fois."
    return nb_coups
end

def average_finish_time
    puts "> "
    puts "> "
    puts "On va regarder maintenant tes chances d'atteindre le haut de l'escalier"
    puts "le jeu va s'exécuter 100 fois et on va calculer le nombre moyen de coups"
    print "> "
    stop = gets.chomp # juste pour faire une pause avant de lancer le dé
    total = 0
    100.times do
        total = total + jeu
    end
    average_time = total / 100
    puts "> "
    puts "En moyenne, tu montes en #{average_time} coups."
end

monte_à_pied
jeu
average_finish_time