class Jvidalba_sln
  # To change this template use File | Settings | File Templates.

  def game
    loop do
      puts "Cuantas veces desea tirar la moneda"
      veces = gets.chomp.to_i

      if(!(veces==0))
        cta_cruz,cta_cara =0,0
        1.upto(veces) do |turn|
          num_random = rand(2)
          puts "Turno #{turn} salio "
          if(num_random.eql?(1))
            puts "CRUZ"
            cta_cruz = cta_cruz.next
          else
            puts "CARA"
            cta_cara = cta_cara.next
          end

        end

        if(cta_cruz>cta_cara) then puts "GANO CRUZ" elsif(cta_cruz==cta_cara) then puts "EMPATE" else puts "GANO CARA" end

        puts "\n¿Desea volver a jugar?"
        again = gets.chomp
        break if(again.eql?('no') or again.eql?('n'))

      else
        puts "No ingrese cero"
        puts "\n¿Desea volver a jugar?"
        again = gets.chomp
        break if(again.eql?('no') or again.eql?('n'))

      end

    end

  end

  oelo = Jvidalba_sln.new
  oelo.game
end