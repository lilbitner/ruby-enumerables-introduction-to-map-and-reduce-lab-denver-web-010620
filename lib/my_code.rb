# My Code here....

def map_to_negativize(source_array)
source_array*-1 
  puts source_array
end 

def map_to_no_change(source_array)
  puts source_array
end 

def map_to_double(source_array)
  source_array*2 
  puts source_array 
end 

map_to_square(source_array)
  source_array*source_array 
  puts source_array
end 


def reduce_to_total(source_array,starting_point)
  total = starting_point + source_array 
  puts total 
end 

def reduce_to_all_true(source_array)
  if source_array [index] = true   
  puts truthy 
  if source_array[index] = false 
  puts falsy 
end 

def reduce_to_any_true(source_array)
  if source_array[index] = true 
    puts true 
  else  
    puts false 
  end 


   

 

  describe "reduce_to_any_true returns true when a truthy value is present" do
    it "reduces correctly" do
      source_array = [ false, nil, nil, nil, true]
      expect(reduce_to_any_true(source_array)).to eq(true)
    end
  end

  describe "reduce_to_any_true returns false when no truthy value is present" do
    it "reduces correctly" do
      source_array = [ false, nil, nil, nil]
      expect(reduce_to_any_true(source_array)).to eq(false)
    end
  end
end
