def alphabet? (number)
    ((97..122).include? number) || ((65..90).include? number)
end 

def caesar_cipher(string, shift_by)    
    ciphered_number_array = string.codepoints.filter_map do |number| 
        if alphabet?(number)
            number + shift_by 
        else 
            number
        end
    end
    
    ciphered_array = ciphered_number_array.filter_map do |number|     
        if alphabet?(number)
            number.chr
        else 
            number = number - 26
            if alphabet?(number)
                number.chr
            else 
                (number + 26).chr
            end
        end
    end

    ciphered_array.join
end

caesar_cipher("What a string!", 5)