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


end

