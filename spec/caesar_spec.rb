require './lib/caesar'

describe 'Caesar Cipher' do
    describe '#caesar_cipher' do
        it 'works with negative shift factors' do
            expect(caesar_cipher('s', -5)).to eql('n')
        end

        it 'works with positive shift factor' do
            expect(caesar_cipher('s', 5)).to eql('x')
        end

        it 'it works with any letter casing' do
            expect(caesar_cipher('HeLLo', 3)).to eql('KhOOr')
        end
    end
end