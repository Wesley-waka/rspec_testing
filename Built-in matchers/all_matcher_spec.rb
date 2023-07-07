RSpec.describe 'all matcher' do
    it 'matches all the values or data types' do
        expect([2,6,4]).to all(be_even)
        expect([5,3,7]).to all(be_odd)
        expect([[],[],[]]).to all(be_empty)
    end

    describe [5,9,7] do
        it{is_expected.to all(be_odd)}
        it{is_expected.to all(be_odd)}
    end

    describe [0,0,0] do
        it{is_expected.to all(be_zero)}
    end
end