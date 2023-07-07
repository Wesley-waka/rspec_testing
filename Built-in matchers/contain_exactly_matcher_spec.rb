RSpec.describe 'contain exactly checks for the exact values without caring about order' do

    subject{[1,2,3]}

    describe 'long form syntax' do
        it 'checks for the values' do
            expect(subject).to contain_exactly(1,2,3)
            expect(subject).to contain_exactly(1,2,3,4)
        end
    end

    it {is_expected.to contain_exactly(1,2,3)}
end