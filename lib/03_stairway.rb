# 6ème sans ascenceur
score = 0
turn=0
array=[]

def roll_the_dice (turn,score,array)
  puts "Tu es sur la marche #{score}"
  puts "Presse ENTREE pour lancer le dé  : "
  print ">>>"
  # gets.chomp            #simple game
  dice = rand(1..6)
  puts dice
  turn+=1

  if dice == 5 or dice == 6 
      puts "Tu grimpes d'une marche"
      score +=1
    elsif
      dice == 1 && score > 0
      puts "PERDU : Tu descends d'une marche"
      score -=1
    else 
      puts "Tu restes où t'es."
  end

  if score == 10
    puts "Tu es sur la marche #{score}"
    puts "BRAVO TU AS GAGNE !!!"
    puts "Nombre de tours = #{turn}"
    array.push(turn)
    score=0
    turn=0
    average_finish_time(turn,score,array)  #stats
  else
  roll_the_dice(turn,score,array)
  end
end

# roll_the_dice(turn,score,array)  #simple game


def average_finish_time(turn,score,array)
   if array.count == 100
    mean_turn= array.sum/array.count
    puts""  
    puts "nombre de parties : #{array.count}"
    puts "nombres moyens de tours : #{mean_turn}"
      else
      roll_the_dice(turn,score,array)
      end
end

average_finish_time(turn,score,array)   #stats