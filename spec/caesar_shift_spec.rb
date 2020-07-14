require './caesar_shift'

describe "#caesar_shift" do
  it "return a encrypted word" do
    expect(caesar_shift("What", 5)).to eql("Bmfy")
  end

  it "return a encrypted string" do
    expect(caesar_shift("This is a long string!", 3)).to eql("Wklv lv d orqj vwulqj!")
  end

  it "return a encrypted string with high keyshift" do
    expect(caesar_shift("A long long time ago THere", 24)).to eql("Y jmle jmle rgkc yem RFcpc")
  end

  context "string has special characters" do
    it "return a encrypted string" do
      expect(caesar_shift("W}..;;[hat@$&", 19)).to eql("P}..;;[atm@$&")
    end
  end

  context "keyshift is out of abecedary" do
    it "return the string with big keyshift" do
      expect(caesar_shift("The same string", 26)).to eql("The same string")
    end

    it "return the string with low keyshift" do
      expect(caesar_shift("The same string", -10)).to eql("The same string")
    end
  end
end
