class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
		def initialize
			@history = Array.new
			@history[0]=nil
			@index=1
		end

		def #{attr_name}
        	return @#{attr_name}
		end

		def #{attr_name+"_history"}
			if @index-1<1
				return nil
			end
			return @history.first(@index-1)
	   	end

		def #{attr_name}=(val)
			@#{attr_name}=val
			@history[@index]=val
			@index+=1
		end
    }
  end
end

class Foo
	attr_accessor_with_history :bar
end
