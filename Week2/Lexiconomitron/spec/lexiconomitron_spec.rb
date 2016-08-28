require_relative("../lib/Lexiconomitron.rb")

RSpec.describe Lexiconomitron do 
  
  describe "#eat_t" do
    
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t(["this","is","quite","dumb","yet","here", "I", "am."])).to eq(["his","is","dumb","ye", "here", "I", "am."])
    end
  end
end