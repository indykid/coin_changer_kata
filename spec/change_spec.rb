COINS = [200, 100, 50, 20, 10, 5, 2, 1]

def make_change_for(pence)
  result = []

  if pence > 0
    COINS.each do |coin|
      if pence % coin == 0
        result << coin
        return result
      # elsif pence % 5 == 0
      #   result << 5
      # elsif pence % 2 == 0
      #   result << 2
      # elsif pence % 1 == 0
      #   result << 1
      end
    end
  end
  result
end

describe "changes" do
  it 'no coins for 0' do
    expect(make_change_for(0)).to eq([])
  end

  it '1p for 1' do
    expect(make_change_for(1)).to eq([1])
  end

  it '2p for 2' do
    expect(make_change_for(2)).to eq([2])
  end

  it '5p for 5' do
    expect(make_change_for(5)).to eq([5])
  end

  it '10p for 10' do
    expect(make_change_for(10)).to eq([10])
  end

  it '20p for 20' do
    expect(make_change_for(20)).to eq([20])
  end

  it '200p for 200' do
    expect(make_change_for(200)).to eq([200])
  end


end