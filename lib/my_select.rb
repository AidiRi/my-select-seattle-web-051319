def my_select(collection)
 # your code here!
 if block_given?
		new_array = []
		i = 0
		while i < collection.length
			yield(collection[i])
			if yield(collection[i]) == true
				new_array << collection[i]
			end
			i = i + 1
		end
		new_array
	else
		nil
	end
end
