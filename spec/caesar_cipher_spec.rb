# spec/caesar_cipher_spec.rb

require "./lib/caesar_cipher"

describe "caesar_cipher" do
  it "shifts string with key" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
  
  it "wraps around Z" do
    expect(caesar_cipher("Z", 1)).to eql("A")
  end
  
  it "wraps around a" do
    expect(caesar_cipher("a", -1)).to eql("z")
  end
  
  it "fails invalid key" do
    expect(caesar_cipher("abc", "a")).to eql(0)
  end
end