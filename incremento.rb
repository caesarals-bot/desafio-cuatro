# 1. Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

puts
puts "Por favor ingrese su salario"
salary = gets.chomp.to_f
puts
puts "Por favor ingrese el porcentaje a incrementar"
salary_increase_percentage = gets.chomp.to_f 
puts

def get_new_salary(salary, increase)
    actual_percentage = increase/100
    increase_salary = salary * actual_percentage
    new_salary = salary + increase_salary 
    return new_salary
end

puts "El nuevo salario es #{get_new_salary(salary, salary_increase_percentage)}"