require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns fizz when 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it  'returns 5 when 5' do
    expect(fizzbuzz(5)).to eq '5'
  end


end

