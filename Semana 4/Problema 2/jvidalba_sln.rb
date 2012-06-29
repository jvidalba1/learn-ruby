class Jvidalba_sln
  # To change this template use File | Settings | File Templates.
  def solution

    cta=0
    1.upto(100) do |turn|
      dado1 = rand(6)
      dado2 = rand(6)
      plus = dado1 + dado2
      puts "Turno #{turn} -> Dado 1: #{dado1} + Dado 2: #{dado2} = #{plus}"

      cta += 1 if(plus.eql?(10))

    end

    puts "Resultado: #{cta}"

  end

  oelo = Jvidalba_sln.new
  oelo.solution
end