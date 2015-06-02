class Person
attr_accessor :name
end

class Mother < Person
	attr_accessor :num_kids
	def sleep
		puts "Too noisy"
	end
end
	
class JobHunter < Person

	def interview(number)
		puts "#{number.to_s} more interviews to go."
	end
end

me = JobHunter.new
me.name="Danny"
me.interview(55)
you = Mother.new
you.name="Yvonne"
you.num_kids=3
you.sleep

puts me.inspect
puts you.inspect