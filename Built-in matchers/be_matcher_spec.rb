RSpec.describe 'be matcher' do
    it 'checks for truthiness' do
        expect(:symbol).to be_truthy
        expect('Wesley').to be_truthy
        expect(1).to be_truthy
        expect([1,2,3]).to be_truthy
    end

    it 'checks for falsiness' do
        expect(false).to be_falsy
    end

    it 'checks a value is nil'do
        expect(nil).to be_nil

        a={
            b: 10,
            c: 90,
            d: 80
        }
        expect(a[:e]).to be_falsy
    end
end