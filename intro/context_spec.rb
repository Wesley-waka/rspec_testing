RSpec.describe '#even? method' do

    before(:context) do
        puts "###begin of TEST### "
    end

    
    before(:example) do
        puts "####Start#####"
    end

    context "with consition A" do

        before(:context) do
            puts "###here we begin"
        end

        before(:example) do
            puts "###here we start"
        end

        it 'should return true' do
            expect(4.even?).to eq(true)
        end

        it 'should return false' do
            expect(3.even?).to eq(false)
        end
    end

    # describe 'with even number' do
        
    # end

    # describe 'with odd number' do
    #     it 'should return false' do
    #         expect(3.even?).to eq(false)
    #     end
    # end

end
