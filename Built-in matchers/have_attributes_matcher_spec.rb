class Pioneer
    attr_reader :name,:school
    
    def initialize(name,school)
        @name = name
        @school = school
    end
end



RSpec.describe 'have_attributes matcher' do
    describe Pioneer.new('Stone Cold Steve Austin', 'Stunner') do
      it 'checks for object attribute and proper values' do
        expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
        expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', school: 'Stunner')
      end
  
      it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
      it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', school: 'Stunner') }
    end
  end
