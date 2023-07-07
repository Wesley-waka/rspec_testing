class HotChocolate do

    def discard
        "Nice tea"
    end

    def drink
        "We have soda"
    end

    def purchase
        "Awesome ,I just paid #{number}"
    end

end

RSpec.describe HotChocolate do
    it'confirms that an object'do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink,:discard)
    end

    it 'confirms an object can respond to a method with arguments' do
        expect(subject).to respond_to(:purchase)
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it{is_expected.to respond(:purchase,:discard)}
    it{is_expected.to respond(:purchase).with(1).arguments}


end