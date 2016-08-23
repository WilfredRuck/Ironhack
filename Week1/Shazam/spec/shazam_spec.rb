require_relative("../lib/shazam.rb")

RSpec.describe "Shazam" do
	describe "crazy" do

		it "reverses the letters in the words in the array" do
			reverse = Shazam.new
			expect(reverse.crazy(["This", " is ", "stupid"])).to eq(["sih", "dipus"])
		end	


	end

end