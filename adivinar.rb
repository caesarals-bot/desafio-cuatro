# 2. Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego
puts
puts 'Adivina el numero'
25.times { print '-' }
puts
puts 'Ingresa un numero del 1 al 10, y acierta o pierde'
puts
user_number = gets.chomp.to_i

def get_machine_number
    random_number = rand(1..10)
    return random_number
end

computer_number = get_machine_number

def get_result(user_number, computer_number)
    confronting = user_number != computer_number ? "Perdiste el numero es #{computer_number}" : 'Ganaste!!!!!'
    puts confronting
    puts
end

get_result(user_number, computer_number)
