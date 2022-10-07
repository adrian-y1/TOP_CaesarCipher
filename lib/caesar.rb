def caesar_cipher(string, factor)
    # Create an array of letters from a to z
    a_to_z = 'a'.upto('z').to_a
    ciphered_string = ""

    # Split the string into an array of letters and loop through it
    str_arr = string.split('').each do |str_letter|
        # If the str_letter doesnt include a letter, add it to the cipher
        if !a_to_z.include?(str_letter.downcase)
            ciphered_string += str_letter
        end

        a_to_z.each_with_index do |arr_letter, idx|
            if arr_letter == str_letter.downcase
                idx_factor = idx + factor

                # If the letter's idx_factor is > length of a_to_z array then
                # change the value of the letter's index to = the remainder of idx_factor and a_to_z's length
                if idx_factor >= a_to_z.length
                    idx = idx_factor % a_to_z.length

                    # Check the letter case and add it to the ciphered_string
                    if str_letter == str_letter.upcase
                        ciphered_string += a_to_z[idx].upcase
                    else
                        ciphered_string += a_to_z[idx]
                    end
                else 
                    # Check the letter case and add it to the ciphered_string
                    if str_letter == str_letter.upcase
                        ciphered_string += a_to_z[idx_factor].upcase
                    else   
                        ciphered_string += a_to_z[idx_factor]
                    end
                end
            end
        end
    end
    puts ciphered_string
    return ciphered_string
end
caesar_cipher('world', 50)