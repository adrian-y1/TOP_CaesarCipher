require './lib/caesar'

describe 'Caesar Cipher' do
    describe 'Function return value' do
        it "returns 'Bmfy f Xywnsl!' when 'What a string!' with factor 5 is given" do
            string = 'What a string!'
            expect(caesar_cipher(string, 5)).to eql('Bmfy f xywnsl!')
        end
    end
end