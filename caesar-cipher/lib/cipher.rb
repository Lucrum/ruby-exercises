def caesar_cipher(string, shift)
    res = ""
    string.each_byte do |letter|
        res += shift_char(letter, shift)
    end
    res
end

def shift_char(char, shift)
    bounds = char.between?(65, 90) ? 1 :
        char.between?(97, 122) ? 2 : nil
    if bounds
        char += shift % 26
    case bounds
    when 1
        unless char.between?(65, 90)
            char -= 26
        end
    when 2
        unless char.between?(97, 122)
            char -= 26
        end
    end
    end
    char.chr
end