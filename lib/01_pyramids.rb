puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  number = gets.chomp.to_i 

puts "Voici la moitié de pyramide :"
def half_pyramid (number,full) 
  number.times do |i|
      (number - i).times {print " "}
      i.times {print "#"+ full}
      puts  "#"
  end 
end

half_pyramid(number,"")
puts 
puts "Voici la pyramide de Gizeh :"
half_pyramid(number,"#")

puts 
if number.odd?
  puts "Voici la pyramide d'Alexandrie :"
  number=number/2
  def wtf_pyramid(number,full)
    half_pyramid(number,full)
    (number+1).times do |i|
      ( i).times {print " "}
      (number-i).times {print "#"+ full}
      puts  "#"    
      end
  end
wtf_pyramid(number,"#")
else
  puts "Veuillez entrer un nombre impair pour voir la pyramide d'Alexandrie!"
end

