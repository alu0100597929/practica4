
#!/usr/bin/ruby

puts "Practica 4 - Lenguajes y Paradigmas de Programacion\n"
puts "Suma y producto de matrices\n\n"

puts "Tamanio de matrices: "
tam = gets.chomp								# guarda el numero pedido por teclado en la variable tam
tam = tam.to_i									# se convierte la variable en un entero

puts "Matrices cuadradas de tamanio #{tam}"




matriz1 = Array.new(tam) {Array.new(tam)}		# se crea un array de tamanio tam en filas al que para cada
												# elemento de la fila se introduce otro array de igual tamanio
												# quedando un array de igual numero de filas y columnas
												
matriz2 = Array.new(tam) {Array.new(tam)}

#--------------- MATRIZ 1 -------------------

puts "\n\nMatriz 1\n\n"

numEl = 1							#numero de elementos de la matriz
i = 0								# i = filas, j = columnas

while i < tam						# mientras i < numero de filas
	
j = 0
	
	while j < tam					# mientras j < numero de columnas
	
	puts "elemento #{numEl}:"  
	elemento = gets.chomp			# guarda el numero pedido por teclado en la variable elemento
	elemento = elemento.to_i		# se convierte la variable en un entero
	matriz1[i][j] = elemento		# se introduce el elemento en su sitio en el array
	
	j += 1
	numEl += 1
	
	end
	
	i += 1
	
end



#--------------- MATRIZ 2 -------------------

puts "\n\nMatriz 2\n\n"

numEl = 1							#numero de elementos de la matriz
i = 0								# i = filas, j = columnas

while i < tam						# mientras i < numero de filas
	
j = 0
	
	while j < tam					# mientras j < numero de columnas
	
	puts "elemento #{numEl}" 
	elemento = gets.chomp			# guarda el numero pedido por teclado en la variable elemento
	elemento = elemento.to_i		# se convierte la variable en un entero
	matriz2[i][j] = elemento		# se introduce el elemento en su sitio en el array
	
	j += 1
	numEl += 1
	
	end
	
	i += 1
	
end


#--------------------------------------------

puts "\n\nMatriz 1: "					# muestra la matriz 1

x = 0

while x < tam
	puts "#{matriz1[x]}\n" 
	x += 1
end

puts "\nMatriz 2: "						# muestra la matriz 2

x = 0

while x < tam
	puts "#{matriz2[x]}\n" 
	x += 1
end



#---------------SUMA DE MATRICES-------------------

matrizSuma = Array.new(tam) {Array.new(tam)}


i = 0								# i = filas, j = columnas

while i < tam						# mientras i < numero de filas
	
j = 0
	
	while j < tam					# mientras j < numero de columnas
	
	matrizSuma[i][j] = matriz1[i][j] + matriz2[i][j]	# suma de elementos
	
	j += 1
	
	end
	
	i += 1
	
end


puts "\n\nSuma de matrices"					# mostrar matriz sumada

x = 0

while x < tam
	puts "#{matrizSuma[x]}\n" 
	x += 1
end


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

