require './lib/caesar'

describe 'Caesar Cipher' do
    describe '#caesar_cipher' do
        it 'works with negative shift factors' do
            expect(caesar_cipher('s', -5)).to eql('n')
        end

        it 'works with positive shift factor' do
            expect(caesar_cipher('s', 5)).to eql('x')
        end

        it 'works with any letter casing' do
            expect(caesar_cipher('HeLLo', 3)).to eql('KhOOr')
        end

        it 'wraps from z to a' do
            expect(caesar_cipher('y', 8)).to eql('g')
        end

        it 'works with punctuation' do
            expect(caesar_cipher('What A String!', 5)).to eql('Bmfy F Xywnsl!')
        end

        it 'works with large shift factor' do
            expect(caesar_cipher('world', 50)).to eql('umpjb')
        end
    end
end