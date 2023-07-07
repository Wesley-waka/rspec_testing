class ProgrammingLanguage
    def initialize(name)
        @name = name
    end
end

RSpec.describe 'ProgrammingLanguage' do
    let(:language) {ProgrammingLanguage.new("Ruby")}

    context 'with no argument' do
        it "Should expect new programming language" do
            expect(language.name).to eq("Ruby")
        end
    end
end