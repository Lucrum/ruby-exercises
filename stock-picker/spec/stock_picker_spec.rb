require './lib/pick.rb'

describe 'Stock Picker' do
    it 'picks the best days' do
        prices = [17,3,6,9,15,8,6,1,10]
        expect(stock_picker(prices)).to eql([1,4])
    end

    # edge cases
    it "returns nil when there aren't enough days" do
        expect(stock_picker([])).to eql(nil)
        expect(stock_picker([100])).to eql(nil)
    end

    it 'handles the lowest day being the last' do
        prices = [10,13,5,8,13,10,4,2]
        expect(stock_picker(prices)).to eql([2,4])
    end

    it 'handles the highest day being the first' do
        prices = [15,10,12,6,7,8,9,9]
        expect(stock_picker(prices)).to eql([3,6]).or eql([3,7])
    end

    it 'handles consecutive bad days' do
        prices = [15,13,11,9,7,5,3,1]
        expect(stock_picker(prices)).to eql(nil)
    end

    it 'handles consecutive good days' do
        prices = [1,3,5,7,9,11,13,15]
        expect(stock_picker(prices)).to eql([0,7])
    end
end