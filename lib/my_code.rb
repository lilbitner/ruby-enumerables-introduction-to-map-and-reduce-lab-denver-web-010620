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

reduce_to_all_true

describe 'my own reduce-like methods' do
  describe "reduce_to_total returns a running total when not given a starting point" do
    it "reduces correctly" do
      source_array = [1,2,3]
      expect(reduce_to_total(source_array)).to eq(6)
    end
  end

  describe "reduce_to_total returns a running total when given a starting point" do
    it "reduces correctly" do
      source_array = [1,2,3]
      starting_point = 100
      expect(reduce_to_total(source_array, starting_point)).to eq(106)
    end
  end

  describe "reduce_to_all_true returns true when all values are truthy" do
    it "reduces correctly" do
      source_array = [1, 2, true, "razmatazz"]
      expect(reduce_to_all_true(source_array)).to be_truthy
    end
  end

  describe "reduce_to_all_true returns false when any value is false" do
    it "reduces correctly" do
      source_array = [1, 2, true, "razmatazz", false]
      expect(reduce_to_all_true(source_array)).to be_falsy
    end
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
