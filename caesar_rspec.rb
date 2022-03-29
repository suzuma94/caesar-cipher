require './lib/cezar'

describe '#caesar_cipher' do 
    it "ciphered word" do
        expect(caesar_cipher('alex',3)).to eql('doha')
    end
end