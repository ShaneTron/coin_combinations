require('pry')
require('rspec')
require('coin_combinations')

describe ('coin_combinations') do

  it("display one quarter for 25 cents") do
    expect(coin_combinations(25)).to(eq([1,0,0,0]))
  end
  it("display three quarters for 75 cents") do
    expect(coin_combinations(75)).to(eq([3,0,0,0]))
  end
  it("display two quarters for .5 cents") do
    expect(coin_combinations(0.5)).to(eq([2,0,0,0]))
  end
  it("display two quarters and 2 dimes for 70 cents") do
    expect(coin_combinations(70)).to(eq([2,2,0,0]))
  end
  it("display two quarters and 1 dime and 1 nickel for 65 cents") do
    expect(coin_combinations(65)).to(eq([2,1,1,0]))
  end
  it("display three quarters and 1 dime and 2 pennies for 87 cents") do
    expect(coin_combinations(87)).to(eq([3,1,0,2]))
  end
  it("display ten quarters and four pennies for 254 cents") do
    expect(coin_combinations(254)).to(eq([10,0,0,4]))
  end


end
