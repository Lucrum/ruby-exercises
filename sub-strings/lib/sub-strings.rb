def substrings(word, dictionary)
    res = Hash.new(0)

    dictionary.each do |dict_word|
        if word.include? dict_word
            res[dict_word] += 1
        end
    end
    res
end