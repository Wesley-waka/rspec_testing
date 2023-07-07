RSpec.describe 'start_with and end_with matchers' do

    describe 'catterpillar' do
        it 'checks what the string starts with'do
            expect(subject).to start_with("cat")
        end

        it 'checks what the string ends with' do
            expect(subject).to end_with("pillar")
        end

        it{is_expected.to end_with("pillar")}
        it{is_expected.to start_with("catt")}
    end

    describe [:a,:c,:b] do
        it "checks begining of array" do
            expect(subject).to start_with(:a)
        end

        it "checks end of the array" do
            expect(subject).to end_with(:b)
        end

        it{is_expected.to start_with(:a)}
        it{is_expected.to end_with(:b)}
    end
end