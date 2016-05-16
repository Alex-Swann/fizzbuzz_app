require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns fizz when 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it  'returns buzz when 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end

  it  'returns 2 when 2' do
    expect(fizzbuzz(2)).to eq '2'
  end

  it 'returns all numbers in string format when not 3,5,15' do
    a = [*1..10000]
    r = a.select{|i| i % 3 != 0 && i % 5 != 0 }
    r.each do |n|
      expect(fizzbuzz(n)).to eq n.to_s
    end
  end

end

