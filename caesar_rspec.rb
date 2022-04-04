require './lib/caesar-cipher'

describe "#caesar_cipher" do 
    it "check if the letter movement works" do
        expect(caesar_cipher("alex", 3)).to eql("doha")
    end
    it "check for empty space" do
        expect(caesar_cipher(" ", 3)).to eql(" ")
    end
    it "check for special chars " do
        expect(caesar_cipher("!", 3)).to eql("!")
        expect(caesar_cipher("&", 4)).to eql("&")
        expect(caesar_cipher("*", 5)).to eql("*")
        expect(caesar_cipher("$", 6)).to eql("$")
        expect(caesar_cipher("@", 8)).to eql("@")
    end
    it "check for numbers" do
        expect(caesar_cipher("123456789", 3)).to eql("123456789")
    end
    it "check for word and number mix" do
        expect(caesar_cipher("alex123", 3)).to eql("doha123")
    end
    it "check for uppercase" do
        expect(caesar_cipher("AlEx", 3)).to eql("DoHa")
    end
end