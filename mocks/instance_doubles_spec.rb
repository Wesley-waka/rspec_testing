class Person
    def a
        "Hello"
    end
end

RSpec.describe 'instance mock double' do

    describe 'regular double' do
        it'takes a regular double' do
            person = double(a:"Hello",b: 20)
            expect(person.a).to eq("Hello")
        end
    end

    describe 'instance double' do
        it 'can only implement that are defined on the class' do
            person=instance_double(Person)
            allow(person).to receive(:a).with(3).and_return("Hello")
            expect(person.a(3)).to eq("Hello")
        end
    end
end