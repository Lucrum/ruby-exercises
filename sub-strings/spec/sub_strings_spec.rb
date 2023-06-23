require './lib/sub-strings.rb'

describe 'Sub Strings' do
    dictionary = ["below","down","go","going",
        "horn","how","howdy","it","i","low",
        "own","part","partner","sit"]
        
    it 'works with a single word' do
        res = { "below" => 1, "low" => 1 }
        expect(substrings('below', dictionary)).to eql(res)
    end

    it 'works with multiple words' do
        res = { "down" => 1, "go" => 1, "going" => 1, 
            "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, 
            "own" => 1, "part" => 1, "partner" => 1, 
            "sit" => 1 }
        expect(substrings("Howdy partner, sit down! How's it going?", 
            dictionary)).to eql(res)
    end
end