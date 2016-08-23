class Designer # < CaffeineConsumer < Payable
	include Payable
	include CaffeineConsumer

	def design_things
		consume_caffeine
		select_typography
		select_colors
		receive_salary
	end

	def select_typography
		#[...]
	end

	def select_colors
		#[...]
	end
end