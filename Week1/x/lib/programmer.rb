class Programmer # < CaffeineConsumer < Payable
	
	include Payable
	include CaffeineConsumer

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary
	end

	def do_wonderful_things_with_computers
		#[...]
	end
end