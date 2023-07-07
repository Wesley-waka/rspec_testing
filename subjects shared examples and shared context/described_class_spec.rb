class King
    attr_accessor :name

    def initialize(name)
        @name = name
    end

end

RSpec.describe King do
    # let(:bob){described_class.new('Bob')}
    subject{ described_class.new('Bob')}
    
    it 'has king Bob initialized' do
        expect(subject.name).to eq("Bob")
    end
end