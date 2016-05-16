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

	it "makes you solve the whole test because i'm an arse" do
		a = [*1..10000]
		a.each do |n|
			if n % 3 == 0 && n % 15 != 0
				expect(fizzbuzz(n)).to eq 'fizz'
			elsif n % 5 == 0 && n % 15 != 0
				expect(fizzbuzz(n)).to eq 'buzz'
			else
				expect(fizzbuzz(n)).to eq n.to_s unless n % 15 == 0
			end
		end
	end

	it 'returns fizzbuzz when 15 is passed' do
		expect(fizzbuzz(15)).to eq 'fizzbuzz'
	end

	it "tests for fizzbuzz" do
		mod5 = [*1..10000].select {|i | i % 15 == 0 }
		mod5.each do |n|
			expect(fizzbuzz(n)).to eq 'fizzbuzz'
		end
	end
end

