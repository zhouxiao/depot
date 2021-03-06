module ApplicationHelper

	def showtime
		t = Time.now
		t_str = t.asctime
		t_a = t_str.split(' ')
		t_a.delete_at(3)
		t_a[2] = "%02d" % t_a[2]
		t_str = t_a.join(' ')
		
		return t_str 
	end
	
	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end

end
