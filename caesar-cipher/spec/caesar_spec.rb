require './lib/cipher.rb'

describe "Caesar Cipher" do
    describe 'translate' do
        it 'works with a small shift' do
            expect(caesar_cipher("Aa", 3)).to eql("Dd")
        end

        it 'works with a big shift' do
            expect(caesar_cipher("Gg", 15)).to eql("Vv")
        end

        it 'wraps letters in a positive direction' do
            expect(caesar_cipher("Yy", 13)).to eql("Ll")
        end

        it 'wraps letters in a negative direction' do
            expect(caesar_cipher("Bb", -7)).to eql("Uu")
        end

        it 'works with phrases with punctuation' do
            expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
        end

        it 'works with phrases and arbitrarily large positive shifts' do
            expect(caesar_cipher("Hello, world!", 100)).to eql("Lipps, asvph!")
        end

        it 'works with phrases and arbitrarily large negative shifts' do
            expect(caesar_cipher("Hello, world!", -100)).to eql("Dahhk, sknhz!")
        end
    end
end