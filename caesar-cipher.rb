def caesar_cipher(my_string, number)

    my_array = ('a'..'z').to_a
    my_arrayUp = ('A'..'Z').to_a
    result = ""
    my_stringLen = my_string.length.to_i - 1
    my_arrayLen = my_array.length.to_i - 1
    
    for x in 0..my_stringLen
        if !my_array.include?(my_string[x]) && !my_arrayUp.include?(my_string[x])
            result += my_string[x].to_s
          end
        for i in 0..my_arrayLen
            if (my_string[x] == my_array[i])
                move_number = i + number.to_i
                result += my_array[move_number - 26].to_s       
            elsif (my_string[x].upcase)
                if (my_string[x].upcase == my_arrayUp[i])
                    move_number = i + number.to_i
                    result += my_arrayUp[move_number - 26].to_s
                end
            end
        end
        
    end
    return result
end

puts "Type your word, please: "
user_string = gets.chomp()
puts "Pick your number to cipher it down"
user_number = gets.chomp()

puts "After the algorithm, your word is: " +caesar_cipher(user_string, user_number)






