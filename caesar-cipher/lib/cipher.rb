def caesar_cipher(string, shift)
    res = ""
    string.each_byte do |letter|
        res += shift_char(letter, shift)
    end
    res
end

def shift_char(char, shift)
    if char.between?(65, 90) || char.between?(97, 122)
        char += shift
        unless char.between?(65, 90) || char.between?(97, 122)
            char -= 26
        end
    end
    char.chr
end