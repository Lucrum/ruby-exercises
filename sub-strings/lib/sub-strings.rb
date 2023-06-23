def substrings(word, dictionary)
    res = Hash.new(0)

    dictionary.each do |dict_word|
        temp = word.downcase
        while temp.include? dict_word
            res[dict_word] += 1
            temp = temp.sub(dict_word, '')
        end
    end
    res
end