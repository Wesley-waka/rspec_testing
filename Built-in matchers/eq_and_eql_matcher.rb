RSpec.describe 'equality matcher' do
    let(:a) {3.0}
    let(:b) {3}

    describe 'eq matcher' do
        it 'tests for value and ignores type' do 
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)

        end
    end

    describe 'eql matcher' do
        it 'strictly checks for the value and valuates for the data type' do
            expect(a).to eql(b)
            expect(b).to eql(3.0)
        end
    end
end