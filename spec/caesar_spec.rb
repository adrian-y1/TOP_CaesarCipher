require './lib/caesar'

describe 'Caesar Cipher' do
    describe '#caesar_cipher' do
        it 'works with negative shift factors' do
            expect(caesar_cipher('s', -5)).to eql('n')
        end
    end
end