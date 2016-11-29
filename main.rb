 # encoding: utf-8
require "./Burbuja"
require 'colorize'

def iniciarPrueba
	obj = Burbuja.new
	
	File.open('prueba.txt', 'r') do |f|
		inicio = Time.now
		while linea = f.gets
			ln = linea.split(":")
			num = ln[0]
			metodo = ln[1]
			array = ln[2].split(" ").map(&:to_i)
			resultado = ln[3]
			fin = Time.now
			time = fin - inicio 

			if resultado.chomp.split(" ").map(&:to_i) == obj.send(metodo, array) then
				puts "#{num}"+"\tÉxito".green+"\t\t#{metodo}\t\tCalculado = #{resultado.chomp} \t\t\t#{time} ms"
			
			else
				puts "#{num}"+"\t*Falla*".red+"\t\t#{metodo} \tCalculado = #{obj.send(metodo, array)}  Esperado = #{resultado.strip}\t#{time} ms"
			end

			
		end
	end
end

puts "ID\tResultado\tMétodo\t\t\tDetalles\t\t    Tiempo transcurrido"
iniciarPrueba
puts "-"*37+" Fin de la prueba"+"-"*37






