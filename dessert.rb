class Dessert
	def initialize(name, calories)
      # your code here
	    @name,@calories=name,calories
    end
	
	def name
		@name
	end
	
	def calories
		@calories
	end
	
	def name=(name)
		@name=name
	end
	
	def calories=(calories)
		@calories=calories
	end
	
    def healthy?
      # your code here
	    if @calories<200
		  return true
	    else
	  	  return false
	    end
    end
    def delicious?
      # your code here
  	    return true
    end
end

class JellyBean < Dessert
    def initialize(flavor)
      # your code here
	    @flavor=flavor
	    @calories=5
	    @name=@flavor+" jelly bean"
    end
	
	  def flavor
	   	@flavor
	  end
	
	  def flavor=(flavor)
		@flavor=flavor
	  end
	
	  def delicious?
		if @flavor=="licorice"
			return false
		else
			return true
		end
	  end
end
