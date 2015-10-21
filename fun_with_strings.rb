module FunWithStrings
  def palindrome?
    # your code here
	result=false
	if self.length>0
		s1=self.reverse.downcase.gsub(/\W/,"")
		s2=self.downcase.gsub(/\W/,"")
		if s1==s2
			result=true
		end
	end
	return result
  end
  def count_words
    # your code here
	ary=self.downcase.split(/\W/)
	words=Hash.new
	ary.each do |i|
		if i != ""
			if words.has_key?(i)			
				words[i]=words[i]+1
			else
				words=words.merge(Hash[i=>1]) 
			end
		end
	end
	return words
  end

  def anagram_groups
    # your code here
	index=-1
	ary=self.split
	result=Array.new(ary.length,Array.new)
	for i in 0..(ary.length-1)
		x=ary[i].downcase.chars.sort.join
		tmp=Array.new
		index=index+1
		for j in 0..(ary.length-1)			
			y=ary[j].downcase.chars.sort.join
			if x.casecmp(y)==0
				tmp<<ary[j]
			end
		end
		result[index]=tmp
	end
	return result.uniq
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

