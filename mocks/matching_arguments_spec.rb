RSpec.describe 'matches an argument' do

    it 'creates an array mock' do
        three_array_mock = double

        allow(three_array_mock).to receive(:first).with(no_args).and_return([1])
        allow(three_array_mock).to receive(:first).with(2).and_return([1,2])
        allow(three_array_mock).to receive(:first).with(3).and_return([1,2,3])
        allow(three_array_mock).to receive(:first).with(be > 10).and_return ([1,2,3,])

        expect(three_array_mock.first).to eq(1)
        expect(three_array_mock.first(1)).to eq([1])
        expect(three_array_mock.first(2)).to eq([1,2])
        expect(three_array_mock.first(3)).to eq([1,2,3])
        expect(three_array_mock.first(12)).to eq([1,2,3])




    end
end