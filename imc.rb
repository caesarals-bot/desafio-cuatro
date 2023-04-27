# 3. Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.
puts
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")

50.times { print '-' }
puts
puts 'Ingresa tu peso en Kilogramos: '
puts
weight = gets.chomp.to_f
puts
puts 'Ingresa tu altura expresada en metros: '
puts
height = gets.chomp.to_f
puts
def get_imc(weight, height)
    imc = weight / height**2
    return imc
end

imc = get_imc(weight, height)

def get_obesity_estimate(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
        elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
        elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
        elsif imc <= 30.0 || imc <= 34.9
        puts "El índice calculado es Obesidad Grado 1"
        elsif imc <= 35.0 || imc <= 39.9
        puts "El índice calculado es Obesidad Grado 2"
        else 
            "El índice calculado es Obesidad Grado 3"
    end
end

puts get_obesity_estimate(imc)