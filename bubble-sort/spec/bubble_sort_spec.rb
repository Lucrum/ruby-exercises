require './lib/bubble.rb'

describe 'Bubble sort' do
    it 'sorts a list' do
        arr = [4,3,78,2,0,2]
        ans = [0,2,2,3,4,78]
        expect(bubble_sort(arr)).to eql(arr.sort)
    end

    xit 'returns an empty array if array is empty' do
        expect(bubble_sort([])).to eql([])
    end

    xit 'returns the same array if the array has one element' do
        expect(bubble_sort[2]).to eql([2])
    end
end