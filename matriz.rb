#---------------MULTIPLICACION DE MATRICES-------------------

matrizMult = Array.new(tam) {Array.new(tam)}


i = 0								# i = filas, j = columnas



while i < tam						# mientras i < numero de filas
	
j = 0
	
	while j < tam					# mientras j < numero de columnas
	
	matrizMult[i][j] = 0			# inicializar el elemento i,j a 0 para que posteriormente se pueda sumar (dentro del tercer while)
	k = 0
	
		while k < tam				# tercer bucle while para realizar la multiplicacion
		
		matrizMult[i][j] = matrizMult[i][j] + (matriz1[i][k] * matriz2[k][j])
		k += 1
		
		end
	
	j += 1
	
	end
	
	i += 1
	
end


puts "\n\nMultiplicacion de matrices"			# mostrar matriz multiplicada

x = 0

while x < tam
	puts "#{matrizMult[x]}\n" 
	x += 1
end

puts "\n\n"

