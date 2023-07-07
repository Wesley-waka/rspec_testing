RSpec.describe 'checks inclusion of a value' do
    describe 'hot chocolate' do
        it 'checks inclusion of strings'do
            expect(subject).to include("hot")
            expect(subject).to include("choc")
        end

        it{is_expected.to include("hot")}
        it{is_expected.to include("choc")}
    end

    describe [1,2,3] do
        it 'check array inclusion' do
            expect(subject).to include(2,3,1)
        end

        it{is_expected.to include(2,3,1)}
    end

    describe {a:1,b:2} do
        it 'checks for a hash inclusion' do
            expect(subject).to include(:a)
            expect(subject).to include(:b:2)
        end

        it{is_expected.to include(:a)}
        it{is_expected.to include(:b:2)}
    end


end