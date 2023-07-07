RSpec.describe 'checks for a change in the subject' do
    subject{[1,2,3,4,5]}

    it 'checks the array length' do
        expect{(subject.push(9))}.to change{subject.length}.from(5).to(6)
    end

    it 'check the before and after' do
        expect{(subject.pop)}.to change{subject.length}.by(-1)
    end

end