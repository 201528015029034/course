# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
    length=arr.length
	sum=0
	if length!=0
		for i in 0..(length-1)
			sum+=arr[i]
		end
	end
	return sum
end

def max_2_sum arr
  # YOUR CODE HERE
    length=arr.length
	sum=0
	if length==1
		sum=arr[0]
	elsif length>1
		large1=arr[0]
		large2=arr[1]
		for i in 0..(length-2)
			if arr[i+1]>=large1
				large2=large1
				large1=arr[i+1]
			elsif arr[i+1]>=large2
				large2=arr[i+1]
			end
		end
		sum=large1+large2
	end
	return sum
end

def sum_to_n? arr, n #长度为0,1的数组，不可能找到两个元素。同时，题目并没有指明当找不到这两个元素时，返回false
  # YOUR CODE HERE
    length=arr.length
	tag=false
	if length>1
		for i in 0..(length-1)
			for j in (i+1)..(length-1)
				if (arr[i]+arr[j])==n
					tag=true
					break
				end
			end
			if tag==true
				break
			end
		end
	end
	return tag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
    tag=false
	if s.length>0
		if s[0]>='a'&&s[0]<='z'
			tag=true unless s[0]=='a'||s[0]=='e'||s[0]=='i'||s[0]=='o'||s[0]=='u'
		elsif s[0]>='A'&&s[0]<='Z'
			tag=true unless s[0]=='A'||s[0]=='E'||s[0]=='I'||s[0]=='O'||s[0]=='U'
		end
	end
	return tag
end

def binary_multiple_of_4? s #题目中并没有指明当满足二进制的字符串，不能被4整除时返回false
  # YOUR CODE HERE
    tag=true
	if s.length < 1
		return false
  	end
	for i in 0..s.length-1
		if s[i]<'0'||s[i]>'1'
			tag=false
		end
	end
	return tag if tag==false
	if tag
	    decimal=Integer("0b"+s)
		if decimal%4==0
			return true
		else
			return false
		end
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(i,p)
		#ISBN should be a String and price should be a float
		@isbn,@price=i,p
		unless @isbn.is_a?(String)&&(@price.is_a?(Float)||@price.is_a?(Integer))
			raise ArgumentError
		end
		unless @isbn.length>0&&@price>0
			raise ArgumentError
		end
	end
	#get methods
	def isbn
		@isbn
	end
	def price
		@price
	end
	#set methods
	def isbn=(i)
		@isbn=i
	end
	def price=(p)
		@price=p
	end
	#price format method
	def price_as_string
		format="%.2f" % @price
		return "$#{format}"
	end
end

