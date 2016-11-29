 # encoding: utf-8
class Burbuja
	
	def ordena(array)
		tmp = 0
	   	(0..array.length-1).each do |i|
	   		(0..array.length-2).each do |j|
	   			if(array[j] > array[j+1])
	   				tmp = array[j]
	   				array[j] = array[j+1]
	   				array[j+1] = tmp
	   			end
	   		end	
	   	end
	   	return array;
	end
	
end