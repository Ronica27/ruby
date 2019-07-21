def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting
	current_hour = determine_current_hour
	userName = nameGetter
	if(current_hour > 3 && current_hour < 12) 
		time = "morning" 
	elsif(current_hour > 12 && current_hour < 18) 
		time = "afternoon" 
	elsif(current_hour >= 18 || current_hour <= 3)
		time = "evening"
	end
	puts "Good #{time}, #{userName.capitalize}!"
end

def nameGetter
	puts "What is your name?"
	userName = gets
end

greeting