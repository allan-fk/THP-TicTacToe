Class grille

  def initialize
    @a=[' ', ' ', ' ']
    @b=[' ', ' ', ' ']
    @c=[' ', ' ', ' ']
  def grille
    puts "   1   2   3"
    puts "A  #{@a[0]} | #{@a[1]} | #{@a[2]} "
    puts "  ---|---|--class Tableau-"
    puts "B  #{@b[0]} | #{@b[1]} | #{@b[2]} "
    puts "  ---|---|---"
    puts "C  #{@c[0]} | #{@c[1]} | #{@c[2]} "
  end

  def win_condition
    [[@a1, @a2, @a3],
    [@a1, @b2, @c3],
    [@a1, @b1, @c1],
    [@b1, @b2, @b3],
    [@c1, @c2, @c3],
    [@c1, @b2, @a3],
    [@a2, @b2, @c2],
    [@a3, @b3, @c3]]
  end

  def tableau_de_choix
    {"a1" => @a[0],
    "a2" => @a[1],
    "a3" => @a[2],
    "b1" => @b[0],
    "b2" => @b[1],
    "b3" => @b[2],
    "c1" => @c[0],
    "c2" => @c[1],
    "c3" => @c[2]}
  end

class Joueur

  def joueur1
    print "Salut, qu'elle est ton nom ?"
    joueur1_name = gets.chomp
    @name1 = joueur1_name
    puts "Choisi t'as combinaison #{name1} ! :)"
    choix_du_joueur = gets.chomp.downcase
    tableau_de_choix.each do |choix, carre|
    if choix_du_joueur == choix
      validite_du_choix(carre)
      carre.sub!(" ", "X")
      grille
    end
  end

  def joueur2
    print "Salut, qu'elle est ton nom ?"
    joueur2_name = gets.chomp
    @name2 = joueur2_name
    puts "Choisi t'as combinaison #{name2} ! :)"
    choix_du_joueur = gets.chomp.downcase
    tableau_de_choix.each do |choix, carre|
    if choix_du_joueur == choix
      validite_du_choix(carre)
      carre.sub!(" ", "0")
      grille
    end
  end

  def Win
   win_condition.each do |combos|
     if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
       puts "Bien jouer #{name2} Tu as gagner ! Dommage #{name1}."
       exit
     elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
       puts "Bien jouer #{name1} Tu as gagner ! Dommage #{name2}."
       exit
     end
   end
end


def run_game
grille
joueur
end

run_game

      validite_du_choix(carre)
      carre.sub!(" ", "X")
      grille
    end
  end
end


def run_game
grille
tour_du_joueur
end

run_game
