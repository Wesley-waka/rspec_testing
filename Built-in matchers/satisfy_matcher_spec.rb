RSpec.describe 'satisfy matcher' do

    subject {'ireri'}
    # subject {'Ireri'}


    it"checks whether a value satisfies a condition" do
        expect(subject).to satisfy{|value| value === value.reverse}
    end

    it "return a descreptive message" do
        expect(subject).to satisfy("be a palindrome") do |value| 
            value === value.reverse 
        end
    end
end