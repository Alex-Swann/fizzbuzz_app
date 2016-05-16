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

	it "3 and 5 should equal fizz and buzz" do
		a = [*1..100]
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
		mod5 = [*1..100].select {|i | i % 15 == 0 }
		mod5.each do |n|
			expect(fizzbuzz(n)).to eq 'fizzbuzz'
		end
	end

  it 'non-integer characters fail' do
    @n = '!@#$%^&*()[]{}"\'|<>,./?~™£¢∞§¡¶•ªº≠=⁄€‹›ﬁﬂ‡°·‚±ÚÆ”’¯˘¿;: '.split('')
    @n << [*"a".."z"] << [*"A".."Z"]
    @n.flatten.each do |x|
      expect(fizzbuzz(x)).to eq "Fail! Not an integer"
    end
    random_words = ['14t','?123','2 34','_+34jif','jhfhfl','','  ','12three','EV%4',]
    random_words.each do |x|
      if x.chars.any? {|c| @n.include? c}
        expect(fizzbuzz(x)).to eq "Fail! Not an integer"
      end
    end
  end

  it 'has a range between 1 & 100' do
    b = [*-10000..0]
    a = [* 101..10000]
    b << a
    b.flatten.each do |i|
      expect(fizzbuzz(i)).to eq "Integer outside of range. Try again!"
    end
  end

end

