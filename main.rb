# Exception Handling:  
# Use best practices to handle all exceptions from main.rb. Do not change the code. 

require_relative 'patient'

new_patient = Patient.new("Darth", "Vader")
puts new_patient.first_name # No errors
puts new_patient.last_name  # No errors

begin 
    puts patient_contact_info
rescue NameError
    puts "ERROR 100: undefined local variable or method `patient_contact_info'(NameError)"
end

begin 
    puts new_patient.patient_status(:coma)
rescue ArgumentError
    puts "ERROR 200: Argument is not a string (ArgumentError)"
end 

begin
    puts new_patient.patient_currently_admitted?
rescue ArgumentError
    puts "ERROR 201: in `patient_currently_admitted?': wrong number of arguments (given 0, expected 1) (ArgumentError)"
end

begin
    puts new_patient.patient_new_total(125)
rescue ZeroDivisionError
    puts "ERROR 400: divided by 0 (ZeroDivisionError)"
end

begin
    new_patient.add_med_to_list("lipitor", 123.12)
rescue ArgumentError
    puts "ERROR 202: in `add_med_to_list': 123.12 is not a number (ArgumentError)"
end

begin
    new_patient.patient_medications_list
rescue RuntimeError
    puts "ERROR 600: in `patient_medications_list': Medications list is not valid. (RuntimeError)"
end



