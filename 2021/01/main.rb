def data
  File.readlines('input.txt', chomp: true).map(&:to_i)
end

def first_part
  array = data
  count = 0
  index = 0
  while array[index + 1]
    count += 1 if array[index] < array[index + 1]
    index += 1
  end
  count
end

def get_sum(array)
  array[0] + array[1] + array[2]
end

def second_part
  array = data
  prev_sum = get_sum(array)
  count = 0
  while array[2]
    count += 1 if prev_sum < get_sum(array)
    prev_sum = get_sum(array) if array.count > 2
    array = array.drop(1)
  end
  count
end

# p first_part
p second_part
