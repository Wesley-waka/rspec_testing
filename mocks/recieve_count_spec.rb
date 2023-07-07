class Actor
    def initialize(name)
        @name = name
    end

    def act
        "I love you,babe"
    end

    def fall_off_ladder
        "Call my agent! No way!"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
        end
    end
end

# actor= Actor.new('Brad Pitt')
# Movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    let(:stuntman) {double("Mr. Danger", ready?: true, act: "Any string at all")}
    subject{ described_class.new(stuntman)}

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            expect(stuntman).to receive(:ready?).atleast(2).times
            expect(stuntman).to receive(:act).exactly(2).times
            expect(stuntman).to receive(:fall_off_ladder).at_most(2).times
            expect(stuntman).to receive(:light_on_fire).once
            expect(stuntman).to receive(:light_on_fire).twice

            subject.start_shooting
        end
    end
end