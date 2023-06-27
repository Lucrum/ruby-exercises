require './lib/bubble'

describe 'Bubble sort' do
  it 'sorts a list' do
    arr = [4, 3, 78, 2, 0, 2]
    expect(bubble_sort(arr)).to eql(arr.sort)
  end

  it 'returns an empty array if array is empty' do
    expect(bubble_sort([])).to eql([])
  end

  it 'returns the same array if the array has one element' do
    expect(bubble_sort([2])).to eql([2])
  end
end
