RSpec.describe 'a random double' do

    it 'only allows defined methods to be invoked' do
        stuntman = double("Mr.Danger",new_methods:"ouch",another_method:'Wes')
        expect(stuntman.new_methods).to eq("ouch")
        expect(stuntman.another_method).to eq("Wes")
    
    
        stuntman = double("Mr.Danger")
        allow(stuntman).to recieve(:fall_off_ladder).and_return("Ouch")
        expect(stuntman.fall_off_ladder).to eq("Ouch")
    
    
        stuntman = double("Mr.Danger")
        allow(student).to receive_messages(fall_off_ladder: 'Ouch',light_on_fire:true)
        expect(stuntman.fall_off_ladder).to eq("Ouch")
        expect(stuntman.light_on_fire).to eq(true)
    
    end



    

end